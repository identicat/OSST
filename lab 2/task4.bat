@ECHO OFF

IF "%~2"=="" (
	ECHO Usage: task4.bat dir1 dir2
	EXIT /B
)

FOR %%f in ("%~1\*") DO (
	IF EXIST "%~2\%%~nxf" ECHO %%~nxf
)

PAUSE
