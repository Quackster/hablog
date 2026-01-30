@echo off
REM ============================================================================
REM HabLog Project - VB6 Syntax Checker
REM Basic syntax validation without requiring VB6 installation
REM ============================================================================

setlocal enabledelayedexpansion

echo.
echo ============================================
echo   HabLog VB6 Syntax Checker
echo ============================================
echo.

set "SCRIPT_DIR=%~dp0"
set "SRC_DIR=%SCRIPT_DIR%src\decompiled"
set "ERRORS=0"

REM Check for common VB6 syntax issues in .bas files
echo [CHECK] Checking module files (.bas)...
echo.

for %%F in ("%SRC_DIR%\*.bas") do (
    set "FILE=%%~nxF"
    set "FILE_ERRORS=0"

    REM Check for unmatched Function/End Function
    set "FUNC_COUNT=0"
    set "ENDFUNC_COUNT=0"

    for /f %%A in ('findstr /i /c:"Private Function" /c:"Public Function" "%%F" 2^>nul ^| find /c /v ""') do set "FUNC_COUNT=%%A"
    for /f %%A in ('findstr /i /c:"End Function" "%%F" 2^>nul ^| find /c /v ""') do set "ENDFUNC_COUNT=%%A"

    if not "!FUNC_COUNT!"=="!ENDFUNC_COUNT!" (
        echo   [WARN] !FILE!: Function count mismatch ^(Functions: !FUNC_COUNT!, End Function: !ENDFUNC_COUNT!^)
        set /a "ERRORS+=1"
    )

    REM Check for unmatched Sub/End Sub
    set "SUB_COUNT=0"
    set "ENDSUB_COUNT=0"

    for /f %%A in ('findstr /i /c:"Private Sub" /c:"Public Sub" "%%F" 2^>nul ^| find /c /v ""') do set "SUB_COUNT=%%A"
    for /f %%A in ('findstr /i /c:"End Sub" "%%F" 2^>nul ^| find /c /v ""') do set "ENDSUB_COUNT=%%A"

    if not "!SUB_COUNT!"=="!ENDSUB_COUNT!" (
        echo   [WARN] !FILE!: Sub count mismatch ^(Subs: !SUB_COUNT!, End Sub: !ENDSUB_COUNT!^)
        set /a "ERRORS+=1"
    )
)

REM Check .frm files
echo.
echo [CHECK] Checking form files (.frm)...
echo.

for %%F in ("%SRC_DIR%\*.frm") do (
    set "FILE=%%~nxF"

    REM Check for VERSION header
    findstr /b "VERSION" "%%F" >nul 2>&1
    if errorlevel 1 (
        echo   [WARN] !FILE!: Missing VERSION header
        set /a "ERRORS+=1"
    )
)

REM Check .cls files
echo.
echo [CHECK] Checking class files (.cls)...
echo.

for %%F in ("%SRC_DIR%\*.cls") do (
    set "FILE=%%~nxF"

    REM Check for VERSION header
    findstr /b "VERSION" "%%F" >nul 2>&1
    if errorlevel 1 (
        echo   [WARN] !FILE!: Missing VERSION header
        set /a "ERRORS+=1"
    )
)

REM Check VBP project file
echo.
echo [CHECK] Checking project file...
echo.

if exist "%SRC_DIR%\Project.vbp" (
    echo   [OK] Project.vbp exists

    REM Check all referenced modules exist
    for /f "tokens=2 delims=;=" %%M in ('findstr /i "^Module=" "%SRC_DIR%\Project.vbp"') do (
        if not exist "%SRC_DIR%\%%M" (
            echo   [ERROR] Missing module: %%M
            set /a "ERRORS+=1"
        )
    )

    REM Check all referenced forms exist
    for /f "tokens=1 delims==" %%F in ('findstr /i "^Form=" "%SRC_DIR%\Project.vbp"') do (
        set "FORM_FILE=%%F"
        set "FORM_FILE=!FORM_FILE:Form=!"
        if not exist "%SRC_DIR%\!FORM_FILE!" (
            echo   [ERROR] Missing form: !FORM_FILE!
            set /a "ERRORS+=1"
        )
    )
) else (
    echo   [ERROR] Project.vbp not found!
    set /a "ERRORS+=1"
)

REM Summary
echo.
echo ============================================
if %ERRORS% EQU 0 (
    echo   All checks passed!
) else (
    echo   Found %ERRORS% issue^(s^)
)
echo ============================================
echo.

REM File statistics
echo [STATS] File counts in src\decompiled\:
for /f %%A in ('dir /b "%SRC_DIR%\*.bas" 2^>nul ^| find /c /v ""') do echo   Modules (.bas): %%A
for /f %%A in ('dir /b "%SRC_DIR%\*.frm" 2^>nul ^| find /c /v ""') do echo   Forms (.frm):   %%A
for /f %%A in ('dir /b "%SRC_DIR%\*.cls" 2^>nul ^| find /c /v ""') do echo   Classes (.cls): %%A
echo.

exit /b %ERRORS%
