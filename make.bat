@echo off
chcp 65001 >nul
echo ==========================================
echo   Anhui University Thesis Compile Script
echo ==========================================
echo.

if not exist main.tex (
    echo [ERROR] main.tex not found!
    pause
    exit /b 1
)

echo [1/4] First compile: generating auxiliary files...
xelatex -interaction=nonstopmode -quiet main.tex
if errorlevel 1 (
    echo [ERROR] First compile failed!
    pause
    exit /b 1
)

echo [2/4] Compiling bibliography...
bibtex main
if errorlevel 1 (
    echo [WARNING] BibTeX may have issues, continuing...
)

echo [3/4] Second compile: updating references...
xelatex -interaction=nonstopmode -quiet main.tex
if errorlevel 1 (
    echo [ERROR] Second compile failed!
    pause
    exit /b 1
)

echo [4/4] Third compile: final output...
xelatex -interaction=nonstopmode -quiet main.tex
if errorlevel 1 (
    echo [ERROR] Third compile failed!
    pause
    exit /b 1
)

echo.
echo ==========================================
echo   Compile complete! Output: main.pdf
echo ==========================================

if exist main.pdf (
    echo [SUCCESS] PDF generated.
    for %%F in (main.pdf) do echo       Size: %%~zF bytes
) else (
    echo [WARNING] PDF file not found.
)

echo.
echo Cleaning temporary files...
del /q main.aux main.log main.out main.toc main.bbl main.blg main.synctex.gz 2>nul
del /q main.fdb_latexmk main.fls main.xdv 2>nul
echo [DONE] Temporary files cleaned.

