@echo off
color @a
:main
mode con cols=40 lines=12
set author=����� ��९����
echo ------------------------
echo GeometryBs Pro 
echo Version: 1.1
echo Author: %author%
echo ------------------------
echo.
echo.
echo 1 - ����⪠
echo 2 - ������� Cache
echo 3 - ����⠭�������
echo 0 - ��室
set /p sym=��ਠ��: 
if "%sym%"=="1" (start data\main1.bat)
if "%sym%"=="2" (del data\cache)
if "%sym%"=="3" (start data\main2.bat)
if "%sym%"=="0" (goto exit)
cls
if "%author%"=="����� ��९����" (help >>help.txt&&del help.txt)
if not "%author%"=="����� ��९����" (msg * ������ ���� �ਫ������&&exit)
goto main
:exit
exit 