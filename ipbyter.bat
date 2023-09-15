@echo off
color 2
title ip byter - by verty
echo welcome to the ip byter!
echo This script will take a byte out of an ip address.
echo.
echo ("Byte" is some term I came up with. It basically just brute forces the minimum amount of bytes an IP can take.)
echo.
echo.

setlocal enabledelayedexpansion
:main
set /p ip="Enter an IP to byte: "
set byte=65500

:iploop
ping %ip% -n 1 -l %byte% | findstr /i "Reply" >nul
if %errorlevel% == 0 (
    color 0A
    echo %ip% is up.
    echo bytes = %byte%
    set /p question="Would you like to go back or keep pinging? type y to keep pinging or n to go back: "
      if /I "%question%" EQU "Y" Goto iploop
      if /I "%question%" EQU "y" Goto iploop
      if /I "%question%" EQU "N" Goto main
      if /I "%question%" EQU "n" Goto main
) else (
    color 0C
    echo %ip% is down. byting the ip...
    echo bytes = %byte%
    set /a byte=byte-1
)

goto iploop
