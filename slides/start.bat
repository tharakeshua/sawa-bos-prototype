@echo off
REM SAWA BOS · Discovery Sprint — Slide deck launcher (Windows)
REM Serves slides/ on http://127.0.0.1:8766 and opens your default browser.

cd /d "%~dp0"
set PORT=8766

echo.
echo   -------------------------------------------------
echo   SAWA BOS . slide deck
echo   open -^> http://127.0.0.1:%PORT%/
echo   press Ctrl+C to stop
echo   -------------------------------------------------
echo.

start "" "http://127.0.0.1:%PORT%/"

where python >nul 2>&1
if %ERRORLEVEL%==0 (
  python -m http.server %PORT% --bind 127.0.0.1
  goto :eof
)

where py >nul 2>&1
if %ERRORLEVEL%==0 (
  py -3 -m http.server %PORT% --bind 127.0.0.1
  goto :eof
)

echo Python is required to run the local server.
echo Install Python 3 (https://python.org) and run this script again.
pause
