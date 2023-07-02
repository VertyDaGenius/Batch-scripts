@Echo off
Rem (PoD is outdated and wont take down an ip, it can however ping one, but my PoD isnt working very well)
Rem I haven't tested this out but in theory this should work. -AndrewTheSkid
Rem Edit made by AndrewTheSkid (github)

   Title Ping script v0.5
   Echo I am not responsible for any damage caused by this
   Echo you can always close this script by typing
   Echo Ctrl+C
 pause

  set /p input="Do you want to use PoD or Normal Ping (Type P for PoD N for Normal ping, I would reccomend normal)"
  if /I "%input%" EQU "Y" Goto PoD
  if /I "%input%" EQU "y" Goto PoD
  if /I "%input%" EQU "N" Goto Norm
  if /I "%input%" EQU "n" Goto Norm
 pause

   :PoD
 set /p input="are you sure you want to ping this? (press N to end this script or press Y to ping)"
  if /I "%input%" EQU "Y" Goto PingPoD
  if /I "%input%" EQU "y" Goto PingPod
  if /I "%input%" EQU "N" Goto End
  if /I "%input%" EQU "n" Goto End
   Pause

   :PingPoD
   Cls
   set /p IP= Enter IP/Domain:
  :Loop1
   Ping -i 255 %IP% -n 1 -w 100 -l 15000
 goto Loop1

 :Norm
 set /p input="are you sure you want to ping this? (press N to end this script or press Y to ping)"
  if /I "%input%" EQU "Y" Goto NormPing
  if /I "%input%" EQU "y" Goto NormPing
  if /I "%input%" EQU "N" Goto End
  if /I "%input%" EQU "n" Goto End

 :NormPing
Cls
set /p ip=Enter IP Address:

:loop
ping -n 1 %ip% > nul

if %errorlevel%==0 (
    color 0A
    echo %ip% is up.
) else (
    color 0C
    echo %ip% is down.
)

goto loop

:end 
  end
