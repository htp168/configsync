@echo off
cd %~dp0/venv/Scripts
python ./../../test.py %1%
exit