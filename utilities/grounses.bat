:: Mod by: jaime.#8359
title gRoUnSeS sCrIpT gEneRaToR^!^!^!1^!1^!^!11 [Randomness Version of Grounded]
@echo off && cls
:init
if not exist checks ( md checks )
if not exist "checks\SAPI-four-installed.txt" (
	echo Checking if SAPI 4 and LangModules is installed...
	pushd balcon
	balcon.exe -l | find "SAPI 4" > nul
	if !errorlevel! == 0 (
		:: Re-title again, because balcon was changed title into "balabolka"
		title gRoUnSeS sCrIpT gEneRaToR^!^!^!1^!1^!^!11 [Randomness Version of Grounded]
		echo SAPI 4 and LangModules has been installed.
		PING -n 3 127.0.0.1 >nul
		popd
		echo SAPI 4 and LangModules is now installed. To check again, delete this file. > checks\SAPI-four-installed.txt
		goto grounsescls
	) else (
		set SUBSCRIPT=y
		call config.bat
		set ADMINREQUIRED=n
		set SUBSCRIPT=n
		popd
		:: Re-title again, because balcon was changed title into "balabolka"
		title gRoUnSeS sCrIpT gEneRaToR^!^!^!1^!1^!^!11 [Randomness Version of Grounded]
		echo SAPI 4 and LangModules has been installed.
		echo SAPI 4 and LangModules is not installed.
		PING -n 4 127.0.0.1>nul
		if !DRYRUN!==y ( echo Nah, Let's skip this part, it's all fake right now. && PING -n 5.5 127.0.0.1>nul && goto grounsescls )
		set ADMINREQUIRED=y
		set NEEDTHEDEPENDERS=y
		set SAFE_MODE=n
		set INSTALL_FLAGS=ALLUSERS=1 /norestart
		if /i "!SAFEBOOT_OPTION!"=="MINIMAL" set SAFE_MODE=y
		if /i "!SAFEBOOT_OPTION!"=="NETWORK" set SAFE_MODE=y
		if !ADMINREQUIRED!==y (
			if !VERBOSEWRAPPER!==y ( echo Checking for Administrator rights... && echo:)
				if /i not "!SAFE_MODE!"=="y" (
					fsutil dirty query !systemdrive! >NUL 2>&1
				if /i not !ERRORLEVEL!==0 (
					color cf
				if !VERBOSEWRAPPER!==n ( cls )
					echo:
					echo ERROR
					echo:
					echo Wrapper: Offline For Schools needs to install SAPI 4 and LangModules.
					echo To do this, it must be started with Admin rights.
					echo:
					echo Close this window and re-open Wrapper: Offline For Schools as an Admin.
					echo ^(right-click grounses.bat and click "Run as Administrator"^)
					pause
					exit
				)
			)
		)
		if !VERBOSEWRAPPER!==y ( echo Admin rights detected. && echo:)
	)
	echo Installing SAPI4 and LangModules...
	if not exist "installers\msttsl.exe" (
		echo ...erm. Bit of an issue there actually. The installer doesn't exist.
		echo A mod copy of Wrapper: Offline For Schools should come with one.
		echo You may be able to find a copy on this website:
		echo https://ia802904.us.archive.org/view_archive.php?archive=/35/items/speakonia_1036/speakonia-1.0.zip
		echo Although SAPI 4 is needed, the generator will now close.
		pause
		exit
	)
	if !DRYRUN!==n ( msiexec /i installers\msttsl.exe !INSTALL_FLAGS! /quiet )
	if not exist "installers\lhttseng.exe" (
		echo ...erm. Bit of an issue there actually. The installer doesn't exist.
		echo A mod copy of Wrapper: Offline For Schools should come with one.
		echo You may be able to find a copy on this website:
		echo https://ia802904.us.archive.org/view_archive.php?archive=/35/items/speakonia_1036/speakonia-langmodules.zip
		echo Although LangModules is needed, the generator will now close.
		pause
		exit
	)
	if !DRYRUN!==n ( msiexec /i installers\lhttseng.exe !INSTALL_FLAGS! /quiet )
	
	if !ADMINREQUIRED!==y (
	color 20
	if !VERBOSEWRAPPER!==n ( cls )
	echo:
	echo Dependencies needing Admin now installed^!
	echo:
	echo Wrapper: Offline For Schools no longer needs Admin rights,
	echo please restart normally by double-clicking.
	echo:
	echo If you saw this from running normally,
	echo Wrapper: Offline For Schools should continue normally after a restart.
	echo:
	)
	echo SAPI 4 and LangModules is now installed. To check again, delete this file. > checks\SAPI-four-installed.txt
	pause
	exit
) else (
	goto grounses
)
:grounsescls
cls
:grounses
echo wHaT iS thE ChArAcTeR's nAme??//??
echo:
set /p CHARACTER= Character: 
echo:
echo wHaT dId hE/sHe/tHeY/iT dO??//??/
echo:
set /p WRONGDOING= Wrongdoing: 
echo:
echo gEneRaTe^!^!^!^!^!^!^!111^!^!^!
set GROUNSES=oH oH oH oH oH oH oH oH oH oH GRRRRRRRRRRRRRRRRRRRRRRRRRRRRRR!!!! %CHARACTER%, hOw dArE yOu %WRONGDOING%!!!! tHaT's iT yOu gRoUnSeS gRoUnSeS gRoUnSeS gRoUnSeS gRoUnSeS gRoUnSeS gRoUnSeS gRoUnSeS gRoUnSeS gRoUnSeS fOr ihfewgegfewigftuewgfuewgfuewgfuewgfgewoufgewugfewiugfuewguewtriuewoueworyiewryipyryiewhtirewyrieygrhkfehfuewgftuewfgturegregfiregtufgewife%RANDOM%%RANDOM%%RANDOM%%RANDOM%%RANDOM%%RANDOM% yEaRs!!!1!111 gO tO yOuR rOoM rIghT nOw!!11!11!!!1
echo ^(Warning^! Randomness^!^)
echo gRoUnSeS MeSsAgE:
echo %GROUNSES%
pushd balcon
start balcon.exe -n "Second Male Voice :: Sam" -p 25 -s 29 -t "%GROUNSES%"
popd
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
goto grounsescls
)
if "%OPTION%"=="4" (
exit
)
if "%OPTION%"=="" (
echo yOu mUsT cHoOsE a vAlId oPtIoN^!^!^!^!^!^!^!11^!11^!
goto grounsesreask
)