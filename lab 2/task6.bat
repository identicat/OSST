@ECHO OFF

SET /P username=Enter Git username: 
SET /P email=Enter email: 

git config --global user.name "%username%"
git config --global user.email "%email%"

ECHO Configuration set
git config --global user.name
git config --global user.email

ECHO.
ECHO Press any key to remove the configuration...
PAUSE

git config --global --unset user.name
git config --global --unset user.email
ECHO Configuration removed.
PAUSE