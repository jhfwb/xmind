@echo off

rem ����
title   Git Working
cls 
echo git�˻�:  jhfwb
echo git����:  jhfwb512.
echo  ����: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
goto selectAll

pause

rem ѡ����
:selectAll
echo ----------------------------------------
echo    ע�⣺��ȷ������git�������ֱ����cmd�����У�����������У���鿴path��������
echo    ��ѡ����Ҫ���еĲ�����Ȼ�󰴻س�
echo ----------------------------------------
echo        1���ֿ��ʼ��������github�ֿ�
echo        2���ύ�ֿ�
echo        3���˳�
set/p n=  ��ѡ��

if "%n%"=="1" ( goto initfun ) else ( if "%n%"=="2" ( goto subfun )   else ( if "%n%"=="3" ( exit ) else ( goto selectAll )))


:subfun
echo    ��ѡ��Ҫ�ύ�����ݣ�Ȼ�󰴻س�
echo ----------------------------------------
echo        1�������ļ�
echo        2��ȫ���ļ�
echo        3��������һ��
echo ----------------------------------------
set/p  f=  ��ѡ��

if "%f%"=="1" ( goto one ) else ( if "%f%"=="2" ( goto all )  else ( if "%f%"=="3" ( goto selectAll )   else ( goto subfun )))



:one
set/p  fo=  ������Ҫ�ϴ����ļ���
git add "%fo%"
echo ���ڽ����ύ��...
set/p  co=  �������������ݣ�
echo ���ڽ��ж��ļ�����������...
git commit -m "%co%"
echo git���ļ��ϴ����...
goto subfun

:all
git add .
echo ���ڽ����ύ��...
set/p  ca=  �������������ݣ�
git commit -m "%ca%"
echo ���ڽ��ж��ļ�����������...
Echo 
set/p  yd=  ��ѡ�� Y. ����Զ��            N. �˳���

rem ����Զ������
If  %yd%==Y ( git push origin master -f  ) else (exit)

goto subfun





:initfun
set/p giturl= ������github�ϵ���ַ��(�磺https://github.com/jhfwb/-.git)
  git clone %giturl%
echo ���Ƴɹ����������ϴ�
goto selectAll