@ECHO OFF
SETLOCAL ENABLEDELAYEDEXPANSION
SET /A num=0
FOR /F "tokens=*" %%i in ('dir /A-D /B /OD /TC') DO (
IF NOT "%%i"=="%~n0%~x0" (
SET /A num+=1
REN "%%i" "!num!%%~xi"
)
)
ENDLOCAL
EXIT