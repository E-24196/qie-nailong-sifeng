@echo off
cd /d "%~dp0"
where python >nul 2>nul
if errorlevel 1 (
  echo Python not found. Install Python, or serve this folder with any static web server.
  pause
  exit /b 1
)
start "" /min python -m http.server 8770
timeout /t 2 >nul
start "" "http://localhost:8770/%E5%88%87%E6%B0%B4%E6%9E%9C.html"
exit
