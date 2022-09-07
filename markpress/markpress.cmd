@echo off
rem 设置hexo目录路径
set hexo_path=C:\Users\Administrator\Program\blog\source\_posts\
rem 设置python虚拟环境目录路径
set pyenv_path=C:\Program Files (x86)\Tools\Sublime Text\Data\Packages\User\markpress\venv\Scripts\
rem 获取参数markdown文件路径
set file_path=%1
set status=0

:start
rem 校验文件类型是否markdown
if not %~x1==.md (
    echo 文件类型不符，操作失败
    goto :quit
)

rem 检测markdown文件是否已存在
if exist %hexo_path%%~nx1 (
    echo 文件已存在
    goto :quit
)

rem 校验pyenv环境和pyyaml库是否已安装
if not exist "%pyenv_path%" pip list --format freeze|find "pyyaml" || goto :pyenv
set status=1 && echo 验证通过

rem 同步cnblog
if not %status% == 1 goto :quit
echo 同步cnblog
if exist "%pyenv_path%" call "%~dp0\venv\Scripts\activate" && python "%~dp0test.py" "%file_path%" && call "%~dp0\venv\Scripts\deactivate" && set status=1 
rem && echo cnblog执行成功

rem 同步hexo
if not %status% == 1 goto :quit
echo 同步hexo
if exist "%hexo_path%" copy %~f1 %hexo_path%%~nx1 && set status=1 && echo hexo执行成功

:quit
rem 退出
pause>nul
exit

:pyenv
rem 创建pyenv并安装pyyaml库
echo 创建pyenv
cd %~dp0
python -m venv venv && call "%~dp0\venv\Scripts\activate" && pip install -i https://pypi.mirrors.ustc.edu.cn/simple pyyaml && set status=1 && echo pyenv创建成功
goto :start