@echo off
REM ============================================================================
REM HabLog Project - VB6 Build Script
REM Compiles the decompiled VB6 project to server.exe
REM ============================================================================

setlocal enabledelayedexpansion

echo.
echo ============================================
echo   HabLog Project Build Script
echo ============================================
echo.

REM Check for VB6 in common locations
set "VB6_PATH="

REM Check common installation paths
if exist "C:\Program Files (x86)\Microsoft Visual Studio\VB98\VB6.EXE" (
    set "VB6_PATH=C:\Program Files (x86)\Microsoft Visual Studio\VB98\VB6.EXE"
)
if exist "C:\Program Files\Microsoft Visual Studio\VB98\VB6.EXE" (
    set "VB6_PATH=C:\Program Files\Microsoft Visual Studio\VB98\VB6.EXE"
)
if exist "%ProgramFiles(x86)%\Microsoft Visual Studio\VB98\VB6.EXE" (
    set "VB6_PATH=%ProgramFiles(x86)%\Microsoft Visual Studio\VB98\VB6.EXE"
)
if exist "%ProgramFiles%\Microsoft Visual Studio\VB98\VB6.EXE" (
    set "VB6_PATH=%ProgramFiles%\Microsoft Visual Studio\VB98\VB6.EXE"
)

REM Check if VB6 is in PATH
where vb6.exe >nul 2>&1
if %ERRORLEVEL% EQU 0 (
    set "VB6_PATH=vb6.exe"
)

REM Check for custom VB6 path in environment variable
if defined VB6_EXE (
    if exist "%VB6_EXE%" (
        set "VB6_PATH=%VB6_EXE%"
    )
)

if "%VB6_PATH%"=="" (
    echo [ERROR] VB6.EXE not found!
    echo.
    echo Please install Visual Basic 6.0 or set VB6_EXE environment variable.
    echo.
    echo Example: set VB6_EXE=C:\Path\To\VB6.EXE
    echo.
    echo Common installation paths:
    echo   - C:\Program Files ^(x86^)\Microsoft Visual Studio\VB98\VB6.EXE
    echo   - C:\Program Files\Microsoft Visual Studio\VB98\VB6.EXE
    echo.
    exit /b 1
)

echo [INFO] Found VB6: %VB6_PATH%
echo.

REM Set project paths
set "SCRIPT_DIR=%~dp0"
set "PROJECT_FILE=%SCRIPT_DIR%src\decompiled\Project.vbp"
set "OUTPUT_DIR=%SCRIPT_DIR%bin"
set "OUTPUT_EXE=%OUTPUT_DIR%\server.exe"

REM Check if project file exists
if not exist "%PROJECT_FILE%" (
    echo [ERROR] Project file not found: %PROJECT_FILE%
    exit /b 1
)

echo [INFO] Project: %PROJECT_FILE%
echo [INFO] Output:  %OUTPUT_EXE%
echo.

REM Create output directory if it doesn't exist
if not exist "%OUTPUT_DIR%" (
    echo [INFO] Creating output directory: %OUTPUT_DIR%
    mkdir "%OUTPUT_DIR%"
)

REM Compile the project
echo [BUILD] Compiling...
echo.

"%VB6_PATH%" /make "%PROJECT_FILE%" /outdir "%OUTPUT_DIR%"

if %ERRORLEVEL% NEQ 0 (
    echo.
    echo [ERROR] Build failed with error code: %ERRORLEVEL%
    echo.
    echo To debug, open the project in VB6 IDE:
    echo   "%VB6_PATH%" "%PROJECT_FILE%"
    echo.
    exit /b %ERRORLEVEL%
)

REM Check if output was created
if exist "%OUTPUT_EXE%" (
    echo.
    echo ============================================
    echo   BUILD SUCCESSFUL
    echo ============================================
    echo.
    echo Output: %OUTPUT_EXE%
    echo.

    REM Show file info
    for %%F in ("%OUTPUT_EXE%") do (
        echo Size: %%~zF bytes
        echo Date: %%~tF
    )
    echo.
) else (
    echo.
    echo [WARNING] Build completed but output not found at expected location.
    echo           Check src\decompiled\ for server.exe
    echo.
)

exit /b 0
