@echo off
set /p name=�������û���:
cd /d %cd%

git init
git config --local user.name "%name%"
git config --local user.email "%name%@github.com"


git add .
git reset HEAD 1.bat
git checkout -- 1.bat
git status


git commit -m "%name%"
git remote add origin git@%name%:%name%/%name%.github.io.git
git pull --rebase origin master
git push -u origin master

pause