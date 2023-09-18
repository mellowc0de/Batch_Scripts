@echo off
setlocal

:menu
cls
echo ..............................................
echo WINDOWS SYSTEM REPAIR KIT
echo **requires administrator privileges**
echo ..............................................
echo Menu Options:
echo 1. System - Disk Defrag
echo 2. System - Clean-up Manager
echo 3. System - File Check Scan
echo 4. DISM Scan - Check Health
echo 5. DISM Scan - Scan Health
echo 6. DISM Scan - Restore Health
echo 7. Reset Winstock
echo 8. Exit
echo ..............................................
set /p choice=Enter your choice (1/2/3/4/5/6/7/8):

:: Change directory to System32 folder
cd %windir%\System32

if %choice%==1 (
    echo ..............................................
    echo You selected - 1. System Disk Defrag
    echo ..............................................
    echo .
    echo ..
    echo ...
    echo starting System Disk Defrag...
    echo .
    echo ..
    echo ...
    defrag /a /c /o /u /v
    echo .
    echo ..
    echo ...
    echo System Disk Defrag completed.
    pause
    goto menu
)
if %choice%==2 (
    echo ..............................................
    echo You selected - 2. System Clean-up Manager
    echo ..............................................
    echo .
    echo ..
    echo ...
    echo starting System Clean-up Manager...
    echo .
    echo ..
    echo ...
    cleanmgr /d C: /verylowdisk
    echo .
    echo ..
    echo ...
    echo System Clean-up Manager completed.
    pause
    goto menu
) 
if %choice%==3 (
    echo ..............................................
    echo You selected - 3. System File Check Scan.
    echo ..............................................
    echo .
    echo ..
    echo ...
    echo starting System File Check...
    echo .
    echo ..
    echo ...
    SFC /scannow
    echo .
    echo ..
    echo ...
    echo System File Check Scan completed.
    pause
    goto menu
) 
if %choice%==4 (
    echo ..............................................
    echo You selected - 4. DISM Scan - Check Health.
    echo ..............................................
    echo .
    echo ..
    echo ...
	echo starting DISM Scan - Check Health...
    echo .
    echo ..
    echo ...
    DISM /Online /Cleanup-Image /CheckHealth
    echo .
    echo ..
    echo ...
    echo DISM Check Health completed.
    pause
    goto menu
) 
if %choice%==5 (
    echo ..............................................
    echo You selected - 5. DISM Scan - Scan Health
    echo ..............................................
    echo .
    echo ..
    echo ...
    echo starting DISM Scan - Scan Health...
    echo .
    echo ..
    echo ...
    DISM /Online /Cleanup-Image /ScanHealth
    echo .
    echo ..
    echo ...
    echo DISM Scan Health completed.
    pause
    goto menu
) 
if %choice%==6 (
    echo ..............................................
    echo You selected - 6. DISM Scan - Restore Health
    echo ..............................................
    echo .
    echo ..
    echo ...
    DISM /Online /Cleanup-Image /RestoreHealth
	echo .
    echo ..
    echo ...
    echo DISM Restore Health completed.
    pause
    goto menu
) 
if %choice%==7 (
    echo ..............................................
    echo You selected - 7. Reset Winsock
    echo ..............................................
    echo .
    echo ..
    echo ...
    netsh winsock reset
	echo .
    echo ..
    echo ...
    echo Winsock reset completed.
    pause
    goto menu
) 
if %choice%==8 (
    echo Exiting the menu
    exit /b 0
) else (
    echo Invalid choice. Please enter a valid option (1/2/3/4/5/6/7/8).
    pause
    goto menu
)

endlocal
