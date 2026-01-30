@echo off
"C:\Program Files (x86)\Microsoft Visual Studio\VB98\VB6.EXE" /make "C:\SourceControl\hablog_src\src\decompiled\Project.vbp" /outdir "C:\SourceControl\hablog_src\bin" /out "C:\SourceControl\hablog_src\build.log"
echo Exit code: %ERRORLEVEL%
