@echo off
title Installing Flash Player version 34.0.0.155...
>nul 2>&1 "%SYSTEMROOT%\System32\cacls.exe" "%SYSTEMROOT%\System32\config\system"  
if '%errorlevel%' NEQ '0' (
	echo Requesting administrative privileges...
	goto uacPrompt
) else (
	goto main
)

:uacPrompt
echo Set UAC = CreateObject^("Shell.Application"^)>> "%temp%\requestAdmin.vbs"  
echo UAC.ShellExecute "%~s0", "", "", "runas", 1>> "%temp%\requestAdmin.vbs"
start "%temp%\requestAdmin.vbs"  
exit /B

:main
del "%temp%\requestAdmin.vbs"
echo Installing 32-bit Adobe Flash Player plugins...
robocopy %~dp0\flash32 %SYSTEMROOT%\SysWOW64\Macromed\Flash /e /xx /njh /njs /ndl /nc /ns
echo Installing 64-bit Adobe Flash Player plugins...
robocopy %~dp0\flash64 %SYSTEMROOT%\System32\Macromed\Flash /e /xx /njh /njs /ndl /nc /ns
title Adobe Flash Player installed!
echo Adobe Flash Player installed!
echo:
echo Press any key to launch FlashPatch.exe.
echo ^(Required to patch any adware hiding in the Chinese Flash Player.^)
pause
start FlashPatch.exe
exit