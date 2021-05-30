:: Original Author: xomdjl_#1339 (ytpmaker1000@gmail.com)
:: Modified by: jaime.#8359 (jaigitrep159)

@echo off && cls
title Grounded Script Generator
:init
if not exist checks ( md checks )
if not exist "checks\SAPI-four-installed.txt" (
	echo Checking if SAPI 4 and LangModules is installed...
	pushd balcon
	balcon.exe -l | find "SAPI 4" > nul
	if !errorlevel! == 0 (
		:: Re-title again, because balcon was changed title into "balabolka"
		title Grounded Script Generator
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
		title Grounded Script Generator
		echo SAPI 4 and LangModules is not installed.
		PING -n 4 127.0.0.1>nul
		if !DRYRUN!==y ( echo Nah, Let's skip this part, it's all fake right now. && PING -n 5.5 127.0.0.1>nul && goto groundedcls )
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
					echo ^(right-click grounded.bat and click "Run as Administrator"^)
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
	goto grounses
)
:groundedcls
cls
:grounded
echo What is the character's name?
echo:
set /p CHARACTER= Character: 
echo:
echo What did he/she/they/it do?
echo:
set /p WRONGDOING= Wrongdoing: 
echo:
echo Generating grounded message...
set GROUNDED=Oh oh oh oh oh oh oh oh oh oh oh oh oh oh oh! %CHARACTER%, how dare you %WRONGDOING%! That's it! You're grounded grounded grounded grounded for %RANDOM%%RANDOM%%RANDOM%%RANDOM%%RANDOM%%RANDOM% years! Go to your room now!
echo Grounded message:
echo %GROUNDED%
pushd balcon
start balcon.exe -n "Second Male Voice :: Sam" -p 10 -t "%GROUNDED%"
popd
echo:
echo Press 1 to copy it to clipboard
echo Press 2 to save it to a .TXT file in utilities\grounded_messages
echo Press 3 to generate another one
echo Press 4 to exit
echo:
:groundedreask
set /p OPTION= Option: 
if "%OPTION%"=="1" (
echo:
echo|set/p=%GROUNDED%|clip
echo Copied to clipboard.
echo:
pause & exit
)
if "%OPTION%"=="2" (
echo:
echo %GROUNDED%>"grounded_messages\%CHARACTER% does %WRONGDOING% and gets grounded.txt"
echo Saved to .TXT file.
echo:
pause & exit
)
if "%OPTION%"=="3" (
cls
goto groundedcls
)
if "%OPTION%"=="4" (
exit
)
if "%OPTION%"=="" (
echo You must choose a valid option.
goto groundedreask
)