@echo off
set /p name=请输入用户名:
cd /d %cd%

git init
git config --local user.name "%name%"
git config --local user.email "%name%@github.com"
git add .
git commit -m "%name%"
git remote add origin git@%name%:%name%/%name%.github.io.git
git pull --rebase origin master
git push -u origin master

pause