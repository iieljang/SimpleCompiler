@ECHO OFF
echo --------------------------------------------------------
echo                Yiel's Simple Compiler       
echo                      GCC based
echo.
echo                       ver 1.1 
echo                    by Yiel Jang
echo                     Jan 15 2022
echo --------------------------------------------------------
for /f %%i in ('dir /b/a-d/od/t:w') do set LAST=%%i
echo File to be compiled is %LAST%
for /f "tokens=1 delims=." %%f in ("%LAST%") do set FILENAME=%%f
@ECHO ON
gcc -O -Wall -W -pedantic -ansi -std=c18 -o %FILENAME% %FILENAME%.c
@ECHO OFF
echo.
echo ---------------------RESULT-----------------------------
echo.
%FILENAME%.exe
echo.
echo.
mkdir bin
move "%cd%\%FILENAME%.exe" "%cd%\bin"
pause