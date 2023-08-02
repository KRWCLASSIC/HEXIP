:top
@echo off
title HEXIP Main Menu
chcp 65001

rem Deafult Var's
set "ver=0.0.1"
set "select=r"
set "hexiptemp=%appdata%\Hexip\temp"

:appdata-folder-handler
if exist "%appdata%\Hexip" (
  goto temp-folder-handler
) else (
  mkdir "%appdata%\Hexip"
)
cls

:temp-folder-handler
if exist "%appdata%\Hexip\temp" (
  goto dependencies-folder-handler
) else (
  mkdir "%appdata%\Hexip\temp"
)
cls

:dependencies-folder-handler
if exist "%appdata%\Hexip\dependencies" (
  goto dependencies-handler
) else (
  mkdir "%appdata%\Hexip\dependencies"
)
cls

:dependencies-handler
if exist "%appdata%\Hexip\dependencies\verified" (
  goto clean
) else (
  goto dependencies-install
)
cls

:clean
rem Add some var's there
cls
goto boot

rem Booting procedure and boot logo/art
:boot
echo      ASCII
echo                        ART
echo                                        GOES
echo                                                         Here
echo                                                                          :D
echo                  Version %ver%                               by KRWCLASSIC
echo.
echo.

rem Selection procedure
echo 1) Compress
echo 2) Decompress
echo 3) Compress + Encrypt
echo 4) Decompress + Decrypt
echo 5) Info
echo.
set /p select="Option: "

if %select%==1 goto 1
if %select%==2 goto 2
if %select%==3 goto 3
if %select%==4 goto 4
if %select%==5 goto 5
rem Restart procedure
if %select%==r goto r

rem Selection executables
rem "exit" line between of each tag is to make sure installer.bat window is getting closed when opening other *.bat file

:1
rem Hexing
xxd -p "%inputF%" > "%outputF%.hex"
echo "%outputF%.hex"
echo no
goto clean

:2
echo no
goto clean

:3
echo no
goto clean

:4
echo no
goto clean

:5
goto info

:info
cls
echo its mine app that uses my custom compression and encryption methods, idk if someone already made smth like this but if yes idc
echo Press ENTER to continue...
pause >nul
goto clean

:dependencies-install
title Downloading dependencies...
cls
curl -LJOS https://github.com/(RepoAuthor)/(Repo)/raw/master/src/(misc)/7zEmbeded.exe

rem Restart installer procedure
:r
goto top
exit