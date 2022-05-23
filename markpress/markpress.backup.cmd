@echo off
rem ����hexoĿ¼·��
set hexo_path=C:\Users\Administrator\Program\blog\source\_posts\
rem ����python���⻷��Ŀ¼·��
set pyenv_path=C:\Program Files (x86)\Tools\Sublime Text\Data\Packages\User\pycnblog\venv\Scripts\
rem ��ȡ����markdown�ļ�·��
set file_path=%1

:start
rem У���ļ������Ƿ�markdown
if not %~x1==.md (
    echo �ļ����Ͳ���������ʧ��
    pause>nul
    exit
)

rem ���markdown�ļ��Ƿ��Ѵ���
if exist %hexo_path%%~nx1 (
    echo �ļ��Ѵ���
    goto :quit
)

rem У��pyenv������pyyaml���Ƿ��Ѱ�װ
if not exist %pyenv_path% pip list --format freeze|find "pyyaml" || goto :pyenv

rem ͬ��cnblog
echo ͬ��cnblog
if exist %pyenv_path% call "%~dp0\venv\Scripts\activate" && python upload.py "%file_path%" && call "%~dp0\venv\Scripts\deactivate" && echo cnblogִ�гɹ�

rem ͬ��hexo
echo ͬ��hexo
if exist %hexo_path% copy %~f1 %hexo_path%%~nx1 && hexo cl & hexo g -d && echo hexoִ�гɹ�

:quit
rem �˳�
pause>nul
exit

:pyenv
rem ����pyenv����װpyyaml��
echo ����pyenv
cd %~dp0
python -m venv venv && call "%~dp0\venv\Scripts\activate" && pip install -i https://pypi.mirrors.ustc.edu.cn/simple pyyaml && echo pyenv�����ɹ� 