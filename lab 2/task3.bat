@ECHO OFF

IF "%~1"=="" (
	ECHO Directory path not specified
	EXIT /B
)

SET /A count=0
FOR /R "%~1" %%a in (.) DO (
	SET /A count+=1
)

SET /A count-=1
ECHO Total subdirectories in "%~1":%count%
PAUSE