@echo off
color @a
:main
mode con cols=40 lines=12
set author=Никита Перепалов
echo ------------------------
echo GeometryBs Pro 
echo Version: 1.1
echo Author: %author%
echo ------------------------
echo.
echo.
echo 1 - Отчистка
echo 2 - Отчистить Cache
echo 3 - Восстановление
echo 0 - Выход
set /p sym=Вариант: 
if "%sym%"=="1" (start data\main1.bat)
if "%sym%"=="2" (del data\cache)
if "%sym%"=="3" (start data\main2.bat)
if "%sym%"=="0" (goto exit)
cls
if "%author%"=="Никита Перепалов" (help >>help.txt&&del help.txt)
if not "%author%"=="Никита Перепалов" (msg * Неверный автор приложение&&exit)
goto main
:exit
exit 