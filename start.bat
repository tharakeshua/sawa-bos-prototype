@echo off
REM SAWA BOS . v5.3 - local launcher (Windows)
REM
REM Boots a tiny local web server in this folder, then opens the
REM prototype in your default browser. Close this window to stop.

setlocal
cd /d "%~dp0"

set PORT=8765
set URL=http://127.0.0.1:%PORT%/index.html

echo.
echo --------------------------------------------
echo   SAWA BOS . v5.3 - Live Prototype
echo --------------------------------------------
echo   Serving on: %URL%
echo   Folder:     %cd%
echo   Close this window to stop.
echo.

REM Open browser after a short delay (non-blocking)
start "" cmd /c "ping -n 2 127.0.0.1 >nul & start %URL%"

REM Try python3, then python, then node
where py >nul 2>nul
if %ERRORLEVEL%==0 (
  py -3 -m http.server %PORT% --bind 127.0.0.1
  goto :eof
)
where python >nul 2>nul
if %ERRORLEVEL%==0 (
  python -m http.server %PORT% --bind 127.0.0.1
  goto :eof
)
where npx >nul 2>nul
if %ERRORLEVEL%==0 (
  npx --yes serve -l %PORT% .
  goto :eof
)

echo ERROR: need Python or Node/npx installed.
echo        ...or just double-click index.html (works from file:// too).
pause
exit /b 1
