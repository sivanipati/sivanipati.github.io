@echo off
echo Building Jekyll site...
echo.

REM Check if Jekyll is installed
jekyll --version >nul 2>&1
if %errorlevel% neq 0 (
    echo Jekyll is not installed. Please install Jekyll first.
    echo You can use one of these methods:
    echo 1. Install Ruby and Jekyll: https://jekyllrb.com/docs/installation/
    echo 2. Use Docker: docker run --rm -it -p 4000:4000 -v %cd%:/srv/jekyll jekyll/jekyll jekyll serve
    echo 3. Use the Python server for static files (serve.bat)
    pause
    exit /b 1
)

REM Build the site
echo Building site...
jekyll build

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
