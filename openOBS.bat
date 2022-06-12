@echo off
for /F "usebackq tokens=1,2 delims==" %%i in (`wmic os get LocalDateTime /VALUE 2^>NUL`) do if '.%%i.'=='.LocalDateTime.' set ldt=%%j
cd d:\
mkdir %mydate%
cd C:\Users\username\Desktop\Open-OBS
type config-1.txt > config.main
echo D:\%mydate%
type config-2.txt >> config.main
start "OBS.exe"

