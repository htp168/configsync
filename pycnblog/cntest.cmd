@echo off
rem �����ļ�
set file=%1%
rem ����Ŀ���ļ���
set file_path="C:\Program Files (x86)\Tools\Sublime Text\Data\Packages\User"
rem ���ε���
call :cp %file% %file_path%
exit

:cp
rem �ж��Ƿ�����ļ�
if exist "%~2\%~nx1" (echo �Ѵ��ڸ��ļ�) else (copy %~f1 "%~2\%~nx1")
rem �Ż�����ʾ���ڣ��Ƿ�ɾ��ԭ�ļ���ִ�У�Y��ɾ��ִ�У�N��ȡ��ִ�У��粻���ڣ�ֱ������ִ��