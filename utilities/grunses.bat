:: Original Mod by: ᖴᖇᗩᑎKY TᕼE ᗪᗩᑎKY#6212
:: Modified by: jaime.#8359 (jaigitrep159)

@echo off && cls
title VGCPUTTP GROUNDED MACHINE GENERATOR^!^!^!^!^!^!^!^!
:init
if not exist checks ( md checks )
if not exist "checks\SAPI-four-installed.txt" (
	echo Checking if SAPI 4 and LangModules is installed...
	pushd balcon
	balcon.exe -l | find "SAPI 4" > nul
	if !errorlevel! == 0 (
		:: Re-title again, because balcon was changed title into "balabolka"
		title VGCPUTTP GROUNDED MACHINE GENERATOR^!^!^!^!^!^!^!^!
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
		title VGCPUTTP GROUNDED MACHINE GENERATOR^!^!^!^!^!^!^!^!
		echo SAPI 4 and LangModules is not installed.
		PING -n 4 127.0.0.1>nul
		if !DRYRUN!==y ( echo Nah, Let's skip this fucking part, it's all fucking fake right now. && PING -n 5.5 127.0.0.1>nul && goto vgcpshitcls )
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
	msiexec /i installers\msttsl.exe !INSTALL_FLAGS! /quiet
	if not exist "installers\lhttseng.exe" (
		echo ...erm. Bit of an issue there actually. The installer doesn't exist.
		echo A mod copy of Wrapper: Offline For Schools should come with one.
		echo You may be able to find a copy on this website:
		echo https://ia802904.us.archive.org/view_archive.php?archive=/35/items/speakonia_1036/speakonia-langmodules.zip
		echo Although LangModules is needed, the generator will now close.
		pause
		exit
	)
	msiexec /i installers\lhttseng.exe !INSTALL_FLAGS! /quiet
	
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
	goto vgcpshit
)
:vgcpshitcls
cls
:vgcpshit
echo WHAT THE FUCK IS THE NAME OF THAT SITTY VGCP/UTTP KID
echo:
set /p CHARECTER= Character:
echo:
echo WHAT DID THIS FAKING LITTLE FRIKING BOY/GIRLD DID?
echo:
set /p WRONGDOING= Wrong doing:
echo:
echo FUCKING GENERATING
set GRUNDED=OH MY FUCKING GOD GRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRR!!!!!!!!!!!!!!!! %CHARECTER% HOW FUCKING DARE YOU %WRONGDOING%!!!! THATS IT YOU ARE GRUNDED GRUNDED GRUNDED GRUNDED FOR bchdjbgufvygeevuiebgebvugvbrgrgbrbfhcuhhbvriugvreugrfvhurfbuhigvvbygrbhyegvbhgv GO TO YOUR FUCKING ROOM BUT NOWNOWNOW
echo Grounded message:
echo %GRUNDED%
pushd balcon
start balcon.exe -n "Second Male Voice :: Sam" -p 10 -t "%GRUNDED%"
popd
echo:
echo press 1 to copy that fucking shit
echo press 2 to save it in the fucking damndamn path as a txt file in utilities/grunded_messages
echo press 3 to generate other shit
echo press 4 to get the fuck outta here
echo:
:grundedreask
set /p OPTION= Option:
if "%OPTION%"=="1" (
echo:
echo|set/p=%GRUNDED%|clip
echo copied in the fucking clipshit
echo:
pause & exit 
)
if "%OPTION%"=="2" (
echo:
echo %GRUNDED%> "grunded_messages\%CHARACTER% DOES %WRONGDOING% AND GETS GRUNDED FOR YEARS.txt"
echo saved to the shitty poopy .txt file
echo:
pause & exit 
)
if "%OPTION%"=="3" (
cls
goto vgcpshitcls
)
if "%OPTION%"=="4" (
exit
)
if "%OPTION%"=="" (
echo LISTEN HERE YOU LITTLE SHIT YOU MUST TYPE SOMETHING PRECIOUS U POOPY HEAD
goto grundedreask
)