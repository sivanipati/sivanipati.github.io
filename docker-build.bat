@echo off
echo Building Jekyll site using Docker...
echo.

REM Check if Docker is available
docker --version >nul 2>&1
if %errorlevel% neq 0 (
    echo Docker is not installed or not running.
    echo Please install Docker Desktop or use the Python server instead.
    echo You can run: serve.bat
    pause
    exit /b 1
)

REM Build the site using Docker
echo Building site with Jekyll Docker image...
docker run --rm -it -v "%cd%:/srv/jekyll" -v "%cd%/_site:/srv/jekyll/_site" jekyll/jekyll:4.3.0 jekyll build

if %errorlevel% equ 0 (
    echo.
    echo Build successful! HTML files have been generated in the _site folder.
    echo You can now:
    echo 1. Open _site/index.html in your browser
    echo 2. Run serve.bat to serve the built files
    echo 3. Deploy to GitHub Pages
) else (
    echo.
    echo Build failed. Please check the error messages above.
)

pause
