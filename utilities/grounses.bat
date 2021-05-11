@echo off && cls

title gRoUnSeS sCrIpT gEneRaToR^!^!^!1^!1^!^!11 [Randomness Version of Grounded]
:grounses
echo wHaT iS thE ChArAcTeR's nAme??//??
echo:
set /p CHARACTER= Character: 
echo:
echo wHaT dId hE/sHe/tHeY/iT dO??//??/
echo:
set /p WRONGDOING= Wrong doing: 
echo:
echo gEneRaTe^!^!^!^!^!^!^!111^!^!^!
set GROUNSES=oH oH oH oH oH oH oH oH oH oH GRRRRRRRRRRRRRRRRRRRRRRRRRRRRRR!!!! %CHARACTER%, hOw dArE yOu %WRONGDOING%!!!! tHaT's iT yOu gRoUnSeS gRoUnSeS gRoUnSeS gRoUnSeS gRoUnSeS gRoUnSeS gRoUnSeS gRoUnSeS gRoUnSeS gRoUnSeS fOr ihfewgegfewigftuewgfuewgfuewgfuewgfgewoufgewugfewiugfuewguewtriuewoueworyiewryipyryiewhtirewyrieygrhkfehfuewgftuewfgturegregfiregtufgewife%RANDOM%%RANDOM%%RANDOM%%RANDOM%%RANDOM%%RANDOM% yEaRs!!!1!111 gO tO yOuR rOoM rIghT nOw!!11!11!!!1
echo Grounded message:
start mshta vbscript:Execute("CreateObject(""SAPI.SpVoice"").Speak(""%GROUNSES%"")(window.close)")
echo %GROUNSES%
echo:
echo pReSs 1 tO cOpY iT tO cLiPbOaRd^!^!^!^!^!11^!1
echo pReSs 2 tO sAvE iT tO a .TxT fiLe iN utilities\grounses_messages^!^!^!^!^!11^!1
echo pReSs 3 tO gEneRaTe aNoThEr oNe^!^!^!^!^!11^!1
echo pReSs 4 tO eXiT^!^!^!^!^!11^!1
echo:
:grounsesreask
set /p OPTION= Option: 
if "%OPTION%"=="1" (
echo:
echo|set/p=%GROUNSES%|clip
echo cOpIeD tO cLiPbOaRd^!^!^!^!^!11^!^!11^!
echo:
pause & exit
)
if "%OPTION%"=="2" (
echo:
echo %GROUNSES%>"grounses_messages\%CHARACTER% dOeS %WRONGDOING% aNd gEs gRoUnSeS.txt"
echo sAvEd tO .TxT fiLE^!^!^!^!^!^!^!^!111^!1^!1
echo:
pause & exit
)
if "%OPTION%"=="3" (
cls
goto grounses
)
if "%OPTION%"=="4" (
exit
)
if "%OPTION%"=="" (
echo yOu mUsT cHoOsE a vAlId oPtIoN^!^!^!^!^!^!^!11^!11^!
goto grounsesreask
)