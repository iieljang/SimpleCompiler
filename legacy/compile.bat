@ECHO OFF
for /f %%i in ('dir /b/a-d/od/t:w') do set LAST=%%i
echo File to be comfiled is %LAST%
for /f "tokens=1 delims=." %%f in ("%LAST%") do set FILENAME=%%f
@ECHO ON
gcc -O -Wall -W -pedantic -ansi -std=c18 -o %FILENAME% %FILENAME%.c
@ECHO OFF
echo ----------------------------------
%FILENAME%.exe
pause