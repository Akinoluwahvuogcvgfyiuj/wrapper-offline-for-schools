title W:O4S Quick Updater Launcher
@echo off && cls
SETLOCAL ENABLEDELAYEDEXPANSION
pushd "%~dp0"
if !errorlevel! NEQ 0 goto error_location
if not exist utilities ( goto error_location )
if not exist wrapper ( goto error_location )
if not exist server ( goto error_location )
goto noerror_location
:error_location
echo Doesn't seem like this script is in a Wrapper: Offline For Schools folder.
pause && exit
:noerror_location
if not exist .git ( goto nogit )
:yesgit
git pull
echo ye
pause & exit
:nogit
echo You have not downloaded Wrapper: Offline For Schools because you just download the repository
echo without cloning it ^(code dropdown, and clicking DOWNLOAD ZIP^).
echo Please download this installer: https://github.com/jaigitrep159/Wrapper-Offline-For-Schools-Installer
echo and reinstall it. Or use the 
echo command: git clone https://github.com/jaigitrep159/Wrapper-Offline-For-Schools.git in your directory
echo like: Documents folder.
pause & exit