@echo off && color 0b
Title Genshin Antiban By Artha ^> %~nx0

:ARCHITECTURE_VALIDATION (
	if "%PROCESSOR_ARCHITECTURE%" EQU "amd64" ( >nul 2>&1 "%SYSTEMROOT%\SysWOW64\cacls.exe" "%SYSTEMROOT%\SysWOW64\config\system"
	) else ( >nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system" )
)

:ADMINISTRATOR_VALIDATION (
	if '%ErrorLevel%' NEQ '0' ( echo.
		echo Meminta Hak administrator
			GOTO :UAC_PROMPT
	) else ( GOTO :GOT_ADMIN )
)

:UAC_PROMPT (
	set params= %*

	echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs"
	echo UAC.ShellExecute "cmd.exe", "/c ""%~s0"" %params:"=""%", "", "runas", 1 >> "%temp%\getadmin.vbs"

	"%temp%\getadmin.vbs" && del "%temp%\getadmin.vbs"
 
	exit /b
) 

:GOT_ADMIN (
	pushd "%CD%" && CD /D "%~dp0" && GOTO :INITIALIZE
)

:INITIALIZE (
	cd /d %SystemRoot%\System32\Drivers\etc\
 
	call :BANNER


	set server=www.google.com
)

:TANYA {
	cls
	call :BANNER
	echo.
	echo ===========================================================================
	echo.
	echo ===DEVICE INFORMATION===
	echo.
	if "%versionten%" geq "2200" echo [#] Sistem operasi yang ada pada perangkat kamu terdeteksi memakai Windows 11
	if "%versionten%" lss "2200" echo [#] Sistem operasi yang ada pada perangkat kamu terdeteksi memakai Windows 10
	if "%version%" == "6.2" echo [#] Sistem operasi yang ada pada perangkat kamu terdeteksi memakai Windows 8
	if "%version%" == "6.1" echo [#] Sistem operasi yang ada pada perangkat kamu terdeteksi memakai Windows 7
	echo.
	echo ===========================================================================
	echo.
	echo ===AGREEMENT===
	echo.
	echo [#] By continuing means directly and indirectly, you agree to what is in the terms and conditions
	echo.
	echo [#] Terms and Conditions : 
	echo 1. Use At Own Risk
	echo.
	echo ===========================================================================
	echo.
	echo ==========================================================================='
        echo.
	echo ===MUST BE DO IT BEFORE RUN!===
	echo.
	echo  You Need Install Minecraft for Windows the trial one from microsoft Store
	echo.
	echo ===========================================================================
	echo.
	echo ===ORDER===
	echo.
	echo [1] Original MineCraft ( this only for u guys after use option 2 if you dont use option 2 before dont need this option)
	echo [2] Crack Minecraft
	echo.
	echo ===========================================================================
	echo.
	echo [#] Choose an order:
	echo.
)

:KONFIRMASI (
	SET /P yakin=[1/2]? 
	IF /I "%yakin%" EQU "1" GOTO original
	IF /I "%yakin%" EQU "2" GOTO cracked
	GOTO KONFIRMASI
)

:original (
	@echo off
	echo Replacing DLLs...
	set "originalFolder=%~dp0System32Original"
	echo Replacing DLLs from %originalFolder%...

	if exist "%originalFolder%\Windows.ApplicationModel.Store.dll" (
    replace /Y "%originalFolder%\Windows.ApplicationModel.Store.dll" "C:\Windows\System32"
    echo DLL replaced successfully.
	) else (
		echo No DLL found in the original folder.
	)

	if exist "%originalFolder%\*Windows.ApplicationModel.Store.dll" (
    copy /Y "%originalFolder%\Windows.ApplicationModel.Store.dll" "C:\Windows\System32"
    echo DLLs replaced successfully.
	) else (
		echo No DLLs found in the original folder.
	)



	set "originalFolder=%~dp0SysWOW64Original"
	echo Replacing DLLs from %originalFolder%...

	if exist "%originalFolder%\Windows.ApplicationModel.Store.dll" (
    replace /Y "%originalFolder%\Windows.ApplicationModel.Store.dll" "C:\Windows\SysWOW64\"
    echo DLL replaced successfully.
	) else (
		echo No DLL found in the original folder.
	)

	if exist "%originalFolder%\*Windows.ApplicationModel.Store.dll" (
    copy /Y "%originalFolder%\Windows.ApplicationModel.Store.dll" "C:\Windows\SysWOW64\"
    echo DLLs replaced successfully.
	) else (
		echo No DLLs found in the original folder.
	)

	exit
)






:cracked (
	@echo off
	echo Replacing DLLs...
	set "originalFolder=%~dp0System32Cracked"
	echo Replacing DLLs from %originalFolder%...

	if exist "%originalFolder%\Windows.ApplicationModel.Store.dll" (
    replace /Y "%originalFolder%\Windows.ApplicationModel.Store.dll" "C:\Windows\System32\"
    echo DLL replaced successfully.
	) else (
		echo No DLL found in the original folder.
	)

	if exist "%originalFolder%\*Windows.ApplicationModel.Store.dll" (
    copy /Y "%originalFolder%\Windows.ApplicationModel.Store.dll" "C:\Windows\System32\"
    echo DLLs replaced successfully.
	) else (
		echo No DLLs found in the original folder.
	)



	set "originalFolder=%~dp0SysWOW64Craked"
	echo Replacing DLLs from %originalFolder%...

	if exist "%originalFolder%\Windows.ApplicationModel.Store.dll" (
    replace /Y "%originalFolder%\Windows.ApplicationModel.Store.dll" "C:\Windows\SysWOW64\"
    echo DLL replaced successfully.
	) else (
		echo No DLL found in the original folder.
	)

	if exist "%originalFolder%\*Windows.ApplicationModel.Store.dll" (
    copy /Y "%originalFolder%\Windows.ApplicationModel.Store.dll" "C:\Windows\SysWOW64\"
    echo DLLs replaced successfully.
	) else (
		echo No DLLs found in the original folder.
	)

	exit
)



:BANNER (
	echo.
	echo   __                 __         .__                   __  .__             ___.                                
	echo "|  | ______   _____/  |_  ____ |  |   _____ ________/  |_|  |__ _____    \_ |__   ____   ___________ _______"
	echo "|  |/ /  _ \ /    \   __\/  _ \|  |   \__  \\_  __ \   __\  |  \\__  \    | __ \_/ __ \ /  ___/\__  \\_  __ \"
	echo "|    <  <_> )   |  \  | (  <_> )  |__  / __ \|  | \/|  | |   Y  \/ __ \_  | \_\ \  ___/ \___ \  / __ \|  | \/"
	echo "|__|_ \____/|___|  /__|  \____/|____/ (____  /__|   |__| |___|  (____  /  |___  /\___  >____  >(____  /__|  "
	echo.
	echo ==   MineCraft Cracker  ==
	echo.
	exit /b 0
)
endlocal