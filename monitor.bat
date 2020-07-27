@echo off

echo input monitor program
set /p EXE=:
tasklist|find /i "%EXE%" && echo do it || echo dont do it

pause
