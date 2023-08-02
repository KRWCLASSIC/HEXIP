:top
@echo off
title HEXIP Main Menu
setlocal EnableDelayedExpansion & rem I hate this shit but who cares
chcp 65001

rem Deafult Var's
set "ver=0.0.1"
set "select=r"
set "hexiptemp=%appdata%\Hexip\temp"
set "hexipdep=%appdata%\Hexip\dependencies"
set "hexipad=%appdata%\Hexip"

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
set "inputF=C:\Moje\ProjektyVSC\HEXIP\hexlookup.txt"
set "outputF=output"
set "CHB1=0"
set "CHB2=2"
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

rem ---------------------------------------------------------------------------------------------------------------------------

:1
rem Input file request
set /p inputF="Input File (Full drive path) (Folders not supported rn): "

rem Output file question
set /p inputF="Output File (Full drive path) (File override not recommended) (Deafult is in the script directory with output name): "

rem Hexing
xxd -p -c 1 "%inputF%" > "%outputF%.hex"
echo Hexed
rem Hexed

rem Load HexLookUp
rem TEMP copy "%hexipad%\hexlookup.txt" "%hexiptemp%\HXLP.bat"
rem TEMP call "%hexiptemp%\HXLP.bat"
rem TEMP del "%hexiptemp%\HXLP.bat"
rem TEMP echo %HEXIP-F3%
set "HEXIP_00=0"
set "HEXIP_01=1"
set "HEXIP_02=2"
set "HEXIP_03=3"
set "HEXIP_04=4"
set "HEXIP_05=5"
set "HEXIP_06=6"
set "HEXIP_07=7"
set "HEXIP_08=8"
set "HEXIP_09=9"
set "HEXIP_0A=q"
set "HEXIP_0B=w"
set "HEXIP_0C=e"
set "HEXIP_0D=r"
set "HEXIP_0E=t"
set "HEXIP_0F=y"
set "HEXIP_10=u"
set "HEXIP_11=i"
set "HEXIP_12=o"
set "HEXIP_13=p"
set "HEXIP_14=a"
set "HEXIP_15=s"
set "HEXIP_16=d"
set "HEXIP_17=f"
set "HEXIP_18=g"
set "HEXIP_19=h"
set "HEXIP_1A=j"
set "HEXIP_1B=k"
set "HEXIP_1C=l"
set "HEXIP_1D=z"
set "HEXIP_1E=x"
set "HEXIP_1F=c"
set "HEXIP_20=v"
set "HEXIP_21=b"
set "HEXIP_22=n"
set "HEXIP_23=m"
set "HEXIP_24=`"
set "HEXIP_25=~"
set "HEXIP_26=!"
set "HEXIP_27=@"
set "HEXIP_28=#"
set "HEXIP_29=$"
set "HEXIP_2A=%"
set "HEXIP_2B=^"
set "HEXIP_2C=&"
set "HEXIP_2D=*"
set "HEXIP_2E=("
set "HEXIP_2F=)"
set "HEXIP_30=["
set "HEXIP_31=]"
set "HEXIP_32=\"
set "HEXIP_33=;"
set "HEXIP_34='"
set "HEXIP_35=,"
set "HEXIP_36=."
set "HEXIP_37=/"
set "HEXIP_38={"
set "HEXIP_39=}"
set "HEXIP_3A=|"
set "HEXIP_3B=:"
set "HEXIP_3C=""
set "HEXIP_3D=<"
set "HEXIP_3E=>"
set "HEXIP_3F=?"
set "HEXIP_40=-"
set "HEXIP_41=="
set "HEXIP_42=+"
set "HEXIP_43=_"
set "HEXIP_44=¥"
set "HEXIP_45=฿"
set "HEXIP_46=₫"
set "HEXIP_47=₩"
set "HEXIP_48=֏"
set "HEXIP_49=€"
set "HEXIP_4A=₹"
set "HEXIP_4B=₪"
set "HEXIP_4C=₺"
set "HEXIP_4D=₡"
set "HEXIP_4E=₦"
set "HEXIP_4F=£"
set "HEXIP_50=₽"
set "HEXIP_51=₢"
set "HEXIP_52=₱"
set "HEXIP_53=৳"
set "HEXIP_54=₲"
set "HEXIP_55=₮"
set "HEXIP_56=₸"
set "HEXIP_57=₾"
set "HEXIP_58=₥"
set "HEXIP_59=៛"
set "HEXIP_5A=₨"
set "HEXIP_5B=₴"
set "HEXIP_5C=₵"
set "HEXIP_5D=₭"
set "HEXIP_5E=¢"
set "HEXIP_5F=﷼"
set "HEXIP_60=₣"
set "HEXIP_61=₿"
set "HEXIP_62=₼"
set "HEXIP_63=௹"
set "HEXIP_64=¤"
set "HEXIP_65=⃀"
set "HEXIP_66=₻"
set "HEXIP_67=ƒ"
set "HEXIP_68=₧"
set "HEXIP_69=৲"
set "HEXIP_6A=₳"
set "HEXIP_6B=₯"
set "HEXIP_6C=₤"
set "HEXIP_6D=₷"
set "HEXIP_6E=৹"
set "HEXIP_6F=₰"
set "HEXIP_70=₠"
set "HEXIP_71=₶"
set "HEXIP_72=৻"
set "HEXIP_73=←"
set "HEXIP_74=→"
set "HEXIP_75=↖"
set "HEXIP_76=↗"
set "HEXIP_77=↜"
set "HEXIP_78=↟"
set "HEXIP_79=↑"
set "HEXIP_7A=↔"
set "HEXIP_7B=↙"
set "HEXIP_7C=↘"
set "HEXIP_7D=↝"
set "HEXIP_7E=↡"
set "HEXIP_7F=↓"
set "HEXIP_80=↕"
set "HEXIP_81=↚"
set "HEXIP_82=↛"
set "HEXIP_83=↞"
set "HEXIP_84=↠"
set "HEXIP_85=↢"
set "HEXIP_86=↣"
set "HEXIP_87=↨"
set "HEXIP_88=↭"
set "HEXIP_89=↯"
set "HEXIP_8A=↤"
set "HEXIP_8B=↦"
set "HEXIP_8C=↩"
set "HEXIP_8D=↪"
set "HEXIP_8E=↰"
set "HEXIP_8F=↱"
set "HEXIP_90=↥"
set "HEXIP_91=↧"
set "HEXIP_92=↫"
set "HEXIP_93=↬"
set "HEXIP_94=↲"
set "HEXIP_95=↳"
set "HEXIP_96=↴"
set "HEXIP_97=↺"
set "HEXIP_98=↸"
set "HEXIP_99=↹"
set "HEXIP_9A=⇄"
set "HEXIP_9B=⇅"
set "HEXIP_9C=↵"
set "HEXIP_9D=↻"
set "HEXIP_9E=↼"
set "HEXIP_9F=⇀"
set "HEXIP_A0=↿"
set "HEXIP_A1=↾"
set "HEXIP_A2=↶"
set "HEXIP_A3=↷"
set "HEXIP_A4=↽"
set "HEXIP_A5=⇁"
set "HEXIP_A6=⇃"
set "HEXIP_A7=⇂"
set "HEXIP_A8=⇆"
set "HEXIP_A9=⇋"
set "HEXIP_AA=⇌"
set "HEXIP_AB=⇎"
set "HEXIP_AC=⇑"
set "HEXIP_AD=⇖"
set "HEXIP_AE=⇇"
set "HEXIP_AF=⇉"
set "HEXIP_B0=⇍"
set "HEXIP_B1=⇏"
set "HEXIP_B2=⇓"
set "HEXIP_B3=⇙"
set "HEXIP_B4=⇈"
set "HEXIP_B5=⇊"
set "HEXIP_B6=⇐"
set "HEXIP_B7=⇒"
set "HEXIP_B8=⇔"
set "HEXIP_B9=⇕"
set "HEXIP_BA=⇗"
set "HEXIP_BB=⇜"
set "HEXIP_BC=⇞"
set "HEXIP_BD=⇡"
set "HEXIP_BE=⇤"
set "HEXIP_BF=⇥"
set "HEXIP_C0=⇘"
set "HEXIP_C1=⇝"
set "HEXIP_C2=⇟"
set "HEXIP_C3=⇣"
set "HEXIP_C4=⇦"
set "HEXIP_C5=⇨"
set "HEXIP_C6=⇚"
set "HEXIP_C7=⇛"
set "HEXIP_C8=⇠"
set "HEXIP_C9=⇢"
set "HEXIP_CA=⇧"
set "HEXIP_CB=⇩"
set "HEXIP_CC=⇪"
set "HEXIP_CD=⇭"
set "HEXIP_CE=⇰"
set "HEXIP_CF=⇳"
set "HEXIP_D0=⇹"
set "HEXIP_D1=⇼"
set "HEXIP_D2=⇫"
set "HEXIP_D3=⇮"
set "HEXIP_D4=⇱"
set "HEXIP_D5=⇵"
set "HEXIP_D6=⇷"
set "HEXIP_D7=⇸"
set "HEXIP_D8=⇬"
set "HEXIP_D9=⇯"
set "HEXIP_DA=⇲"
set "HEXIP_DB=⇶"
set "HEXIP_DC=⇺"
set "HEXIP_DD=⇻"
set "HEXIP_DE=⇽"
set "HEXIP_DF=▢"
set "HEXIP_E0=▥"
set "HEXIP_E1=▨"
set "HEXIP_E2=▬"
set "HEXIP_E3=▭"
set "HEXIP_E4=⇾"
set "HEXIP_E5=▣"
set "HEXIP_E6=▦"
set "HEXIP_E7=▩"
set "HEXIP_E8=▮"
set "HEXIP_E9=▯"
set "HEXIP_EA=⇿"
set "HEXIP_EB=▤"
set "HEXIP_EC=▧"
set "HEXIP_ED=◊"
set "HEXIP_EE=▪"
set "HEXIP_EF=▫"
set "HEXIP_F0=▰"
set "HEXIP_F1=▱"
set "HEXIP_F2=◀"
set "HEXIP_F3=▶"
set "HEXIP_F4=◁"
set "HEXIP_F5=▷"
set "HEXIP_F6=▲"
set "HEXIP_F7=△"
set "HEXIP_F8=◄"
set "HEXIP_F9=►"
set "HEXIP_FA=◅"
set "HEXIP_FB=▻"
set "HEXIP_FC=▴"
set "HEXIP_FD=▵"
set "HEXIP_FE=⊙"
set "HEXIP_FF=⊘"

rem Stringify Hex
for /f "usebackq delims=" %%i in ("%outputF%.hex") do set "string=!string!%%i"
(for %%c in (!string!) do echo %%c) > "%outputF%.hex"
pause >nul

rem Variablizing
set /p file=<%outputF%.hex
:FTCalc
set "FTC="
set FTC=!file:~%CHB1%,%CHB2%!
if defined FTC (
    goto LoopFTC
) else (
    goto NoCharsLeft
)
:LoopFTC
echo %FTC% >> reoutput.txt
set /a "routs+=2"
set /a "CHB1+=2"
goto FTCalc
:NoCharsLeft
echo %routs%
pause >nul
rem Variablized

rem ---------------------------------------------------------------------------------------------------------------------------

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

rem XXD
curl -LJS https://github.com/KRWCLASSIC/HEXIP/raw/main/xxd.exe -o "%hexipdep%\xxd.exe"
if %errorlevel% neq 0 (
    echo Error: File download failed or corrupted.
    del "%hexipdep%\xxd.exe"
    del "%hexipdep%\verified"
    echo Removed corrupted file
    echo Restarting the app...
    timeout 3 >nul
    goto r
) else (
    echo. > "%hexipdep%\verified"
)

rem HexLookup
curl -LJS https://raw.githubusercontent.com/KRWCLASSIC/HEXIP/main/hexlookup.txt -o "%hexipad%\hexlookup.txt"
if %errorlevel% neq 0 (
    echo Error: File download failed or corrupted.
    del "%hexipad%\hexlookup.txt"
    del "%hexipdep%\verified"
    echo Removed corrupted file
    echo Restarting the app...
    timeout 3 >nul
    goto r
) else (
    echo. > "%hexipdep%\verified"
)
goto top

rem Restart installer procedure
:r
goto top
exit