@ECHO OFF
SETLOCAL ENABLEDELAYEDEXPANSION

:INPUT
SET /P n=Enter number (or - to finish):
IF "%n%"=="-" GOTO RESULT

IF NOT DEFINED min SET min=%n%
IF NOT DEFINED max SET max=%n%

IF %n% gtr !max! set max=%n%
IF %n% lss !min! set min=%n%
GOTO INPUT

:RESULT
ECHO Minimum: %min%
ECHO Maximum: %max%

PAUSE