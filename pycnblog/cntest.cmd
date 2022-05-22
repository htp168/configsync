@echo off
rem 传入文件
set file=%1%
rem 设置目标文件夹
set file_path="C:\Program Files (x86)\Tools\Sublime Text\Data\Packages\User"
rem 传参调入
call :cp %file% %file_path%
exit

:cp
rem 判断是否存在文件
if exist "%~2\%~nx1" (echo 已存在该文件) else (copy %~f1 "%~2\%~nx1")
rem 优化：提示存在，是否删除原文件后执行，Y：删除执行，N：取消执行，如不存在，直接往下执行