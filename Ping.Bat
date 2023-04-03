@Echo off
Rem (PoD is outdated and wont take down an ip, it can however ping one)
Rem I haven't tested this out but in theory this should work. -AndrewTheSkid
Rem Edit made by AndrewTheSkid (github)

   Echo starting Ping script v0.5
   Echo I am not responsible for any damage caused by this
   Echo you can always close this script by typing
   Echo Ctrl+C
 pause

 pause
  set /p input="Do you want to use PoD or Normal Ping (Type P for PoD N for Normal ping)"
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
  :Loop
   Ping %IP% -1 65500 -w 1 -n 1
 goto Loop

 :Norm
 set /p input="are you sure you want to ping this? (press N to end this script or press Y to ping)"
  if /I "%input%" EQU "Y" Goto NormPing
  if /I "%input%" EQU "y" Goto NormPing
  if /I "%input%" EQU "N" Goto End
  if /I "%input%" EQU "n" Goto End

 :NormPing
  Cls
 set /p IP= Enter IP/Domain:
:top
PING  -n 1 %IP% | FIND "TTL="
ping -n 2 -l 10 127.0.0.1 >nul
Goto top

:end 
  end
