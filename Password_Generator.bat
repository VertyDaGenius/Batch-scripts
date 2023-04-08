@echo off
echo just tested this out and it doesnt work :(
pause
title password generator made by AndrewTheSkid

  setlocal EnableDelayedExpansion
   set /p passlength=Enter The Password Length:
   set pwdchars=ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789!@#$%^&*(){}[]\/><.,`~

   set pwd=
     for /l %%# in (1,1,%passlength%) do (
   set /a randomchar=!random! %% 87
   set pwd=!pwd!!pwdchars:~%randomchar%,1!
    )

      echo Your password is:
      echo %pwd%

pause
