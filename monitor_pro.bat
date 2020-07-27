@echo off
:menu
color 4f
cls
echo "| |
echo "| 程序判斷 |
echo "| 請選擇(只要輸入1,2,3,4)： |
echo "| 1.根據程式名 例：taskmgr.exe |
echo "| 2.根據視窗標題 例：Windows 工作管理員 |
echo "| 3.根據PID值 例：3896 |
echo "| 4.幫助檔案 |
echo "| 5.安全退出 |
echo "| |

set /p Select=請選擇(1,2,3,4然後回車):
echo 您選擇了第%Select%項
echo.
echo.

if {%Select%}=={1} goto ProgrammeName
if {%Select%}=={2} goto WindowsTitle
if {%Select%}=={3} goto PID
if {%Select%}=={4} goto helptxt
if {%Select%}=={5} goto exit


:ProgrammeName

color a

echo 請輸入需要追蹤的程式名(記得加.exe 例taskmgr.exe)
set /p EXE=程式名:
echo.
echo 您輸入的程式名是:%EXE%
echo.
tasklist|find /i "%EXE%" && echo %EXE%執行中 || echo %EXE%未執行
pause
goto menu

:WindowsTitle

color b

echo 請輸入需要追蹤的視窗標題(例如：Windows 工作管理員)
set /p Title=視窗標題:
echo.
echo 您輸入的視窗標題是:%Title%
echo.
tasklist /FI "WINDOWTITLE eq %Title%"|find /i "PID" && echo %Title%執行中 || echo %Title%未執行
pause
goto menu

:PID

color c

echo 請輸入需要追蹤的PID值(例如：3896)
set /p pid=PID值:
echo.
echo 您輸入的PID值是:%pid%
echo.
tasklist /FI "PID eq %pid%"|find /i "PID" && echo PID:%pid%執行中 || echo PID:%pid%未執行
pause
goto menu

:helptxt
color 03
more data/helptxt.inf
goto menu

:exit
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.

echo 再見感謝你的使用
echo off
pause