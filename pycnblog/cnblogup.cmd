@echo off
::发布到博客园cnblog
cd %~dp0/venv/Scripts
python ./../../upload.py %1

::后续加入其他同步


