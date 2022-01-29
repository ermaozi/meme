@echo off 
call :get "%cd%"
pause>nul
exit
:get
echo''>%~n1.list
SETLOCAL ENABLEDELAYEDEXPANSION
SET /A num=0
FOR /F "tokens=*" %%i in ('dir /A-D /B /OD /TC') DO (
IF NOT "%%i"=="%~n0%~x0" (IF NOT "%%i"=="%~n1.list" (
SET /A num+=1
REN "%%i" "!num!%%~xi"
echo https://raw.githubusercontents.com/ermaozi/meme/main/cat/!num!%%~xi>>%~n1.list
)
)
)
ENDLOCAL
EXIT