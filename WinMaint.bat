@echo off
:::  ________  _______   ________   _______   ___      ___ ________  ___       _______   ________   ________  _______      
::: |\   __  \|\  ___ \ |\   ___  \|\  ___ \ |\  \    /  /|\   __  \|\  \     |\  ___ \ |\   ___  \|\   ____\|\  ___ \     
::: \ \  \|\ /\ \   __/|\ \  \\ \  \ \   __/|\ \  \  /  / | \  \|\  \ \  \    \ \   __/|\ \  \\ \  \ \  \___|\ \   __/|    
:::  \ \   __  \ \  \_|/_\ \  \\ \  \ \  \_|/_\ \  \/  / / \ \  \\\  \ \  \    \ \  \_|/_\ \  \\ \  \ \  \    \ \  \_|/__  
:::   \ \  \|\  \ \  \_|\ \ \  \\ \  \ \  \_|\ \ \    / /   \ \  \\\  \ \  \____\ \  \_|\ \ \  \\ \  \ \  \____\ \  \_|\ \ 
:::    \ \_______\ \_______\ \__\\ \__\ \_______\ \__/ /     \ \_______\ \_______\ \_______\ \__\\ \__\ \_______\ \_______\
:::     \|_______|\|_______|\|__| \|__|\|_______|\|__|/       \|_______|\|_______|\|_______|\|__| \|__|\|_______|\|_______|
::: 
:::  _____ ______   _______   ________   ________  ___  ________  ___  ___     
::: |\   _ \  _   \|\  ___ \ |\   ____\ |\   ____\|\  \|\   __  \|\  \|\  \    
::: \ \  \\\__\ \  \ \   __/|\ \  \___|_\ \  \___|\ \  \ \  \|\  \ \  \\\  \   
:::  \ \  \\|__| \  \ \  \_|/_\ \_____  \\ \_____  \ \  \ \   __  \ \   __  \  
:::   \ \  \    \ \  \ \  \_|\ \|____|\  \\|____|\  \ \  \ \  \ \  \ \  \ \  \ 
:::    \ \__\    \ \__\ \_______\____\_\  \ ____\_\  \ \__\ \__\ \__\ \__\ \__\
:::     \|__|     \|__|\|_______|\_________\\_________\|__|\|__|\|__|\|__|\|__|
:::                             \|_________\|_________|
for /f "delims=: tokens=*" %%A in ('findstr /b ::: "%~f0"') do @echo(%%A
timeout /t 3
:: ============================================================
::           Comprehensive Windows Maintenance Utility
:: ============================================================
:: Description:
:: This utility provides a suite of tools for maintaining and optimizing your Windows 10 system.
:: Features include:
:: 1. Clean Cache and Temporary Files
:: 2. Restart Wireless Network Adapter
:: 3. Empty Recycle Bin
:: 4. Schedule System Shutdown in 3 Hours
:: 5. Schedule System Restart
:: 6. Windows Updates Options
:: 7. Run System Health Checks
:: 8. View Maintenance Log
:: 9. Visit Developer Websites
:: 10. Disk Defragmentation
:: 11. Startup Optimization
:: 12. Driver Updates
:: 13. Restore Points Management
:: 14. System Information
:: 15. Network Diagnostics
:: 16. Automated Backup Utility
:: 17. Clean Event Logs
:: 18. Check Antivirus Status
:: 19. Backup Network Configurations
:: 20. Power Settings Optimization
:: 21. Exit
:: Additional Features:
:: - System Information
:: - Network Diagnostics
:: ============================================================

:: Set color scheme (Background: Black, Text: Bright White)
:: color 0F
color 0a
title Comprehensive Windows Maintenance Utility (WinMaint.bat)

:: Generate the ESC character
for /F %%a in ('echo prompt $E ^| cmd') do set "ESC=%%a"

:: Standard Colors
set "BLACK=%ESC%[30m"
set "RED=%ESC%[31m"
set "GREEN=%ESC%[32m"
set "YELLOW=%ESC%[38;5;226m"
set "BLUE=%ESC%[38;5;21m"
set "MAGENTA=%ESC%[35m"
set "CYAN=%ESC%[36m"
set "WHITE=%ESC%[37m"
set "L_BLACK=%ESC%[90m"
set "L_RED=%ESC%[38;5;201m"
set "L_GREEN=%ESC%[92m"
set "L_YELLOW=%ESC%[38;5;228m"
set "L_BLUE=%ESC%[38;5;51m"
set "L_MAGENTA=%ESC%[95m"
set "L_CYAN=%ESC%[96m"
set "L_WHITE=%ESC%[97m"
set "RESET=%ESC%[92m"

:: Define log file location
set "logfile=%~dp0MaintenanceLog.txt"

:: New features
set "tray_icon=%~dp0tray_icon.ico"
set "encryption_key_file=%~dp0encryption_key.txt"

:: Jump to intro menu
goto intro_menu

:: -------------------- Main Script Begins --------------------

:intro_menu
cls
echo ---------------------------------------------------------------
echo.
echo ==============================================================================
echo    %L_BLUE%Welcome to the Comprehensive Windows Maintenance Utility%RESET%
echo ==============================================================================
echo.
echo - %L_MAGENTA%WinMaint.bat%RESET% is a powerful and versatile script designed to simplify and automate a
echo   wide range of system maintenance tasks on Windows 10. By combining batch commands and
echo   PowerShell scripts, it provides a comprehensive toolkit for users to keep their
echo   systems running smoothly and efficiently.
echo - This utility provides a range of tools to maintain and optimize your Windows 10 system.
echo   Below is a summary of the available features:
echo - Press Ctrl+c to exit at any time
echo.
echo ---------------------------------------------------------------
timeout /t -1
echo %L_BLUE%Summary:%RESET% 
echo ---------------------------------------------------------------
echo 1. %L_YELLOW%Clean Cache and Temporary Files%RESET% - Remove unnecessary files
echo 2. %L_YELLOW%Restart Wireless Network Adapter%RESET% - Refresh your Wi-Fi connection
echo 3. %L_YELLOW%Empty Recycle Bin%RESET% - Permanently delete items in Recycle Bin
echo 4. %L_YELLOW%Schedule System Shutdown in 3 Hours%RESET% - Automatically shut down your PC
echo 5. %L_YELLOW%Schedule System Restart%RESET% - Set up automatic restarts
echo 6. %L_YELLOW%Windows Updates Options%RESET% - Manage Windows Updates
echo 7. %L_YELLOW%Run System Health Checks%RESET% - Diagnose and repair system issues
echo 8. %L_YELLOW%View Maintenance Log%RESET% - Review actions performed by the utility
echo 9. %L_YELLOW%Visit Developer Websites%RESET% - Access Benevolence Messiah's GitHub and HuggingFace
echo 10. %L_YELLOW%Disk Defragmentation%RESET% - Optimize disk performance
echo 11. %L_YELLOW%Startup Optimization%RESET% - Manage startup programs
echo 12. %L_YELLOW%Driver Updates%RESET% - Check for driver updates
echo 13. %L_YELLOW%Restore Points Management%RESET% - Create and manage restore points
echo 14. %L_YELLOW%System Information%RESET% - Display detailed system info
echo 15. %L_YELLOW%Network Diagnostics%RESET% - Perform network troubleshooting
echo 16. %L_YELLOW%Automated Backup Utility%RESET% - Backup important files and folders
echo 17. %L_YELLOW%Clean Event Logs%RESET% - Clear Windows Event Logs
echo 18. %L_YELLOW%Check Antivirus Status%RESET% - Verify antivirus protection
echo 19. %L_YELLOW%Backup Network Configurations%RESET% - Save and restore network settings
echo 20. %L_YELLOW%Power Settings Optimization%RESET% - Optimize power plans for performance or energy saving
echo 21. %L_YELLOW%Launch Chris Titus Tech Windows Utility%RESET% - Launches the powerful Chris Titus Tech Windows Utility
echo 22. %L_YELLOW%Disk Space Visualization%RESET% - Visualize disk space usage
echo 23. %L_YELLOW%Battery Health Check%RESET% - Check battery health
echo 24. %L_YELLOW%Internet Speed Test%RESET% - Test internet speed
echo 25. %L_YELLOW%File Encryption Utility%RESET% - Encrypt and decrypt files
echo 26. %L_YELLOW%System Resource Monitor%RESET% - Monitor system resources
echo 27. %L_RED%Exit%RESET% - Close the utility
echo.
echo ==============================================================================
echo %L_BLUE%For more information and updates, visit:%RESET%
echo ---------------------------------------------------------------
echo    %L_CYAN%-https://huggingface.co/BenevolenceMessiah%RESET%
echo    %L_CYAN%-https://github.com/BenevolenceMessiah%RESET%
echo ==============================================================================
echo.
echo ---------------------------------------------------------------
echo Press any key to proceed to the main menu...
pause >nul
goto main_menu

:main_menu
cls
echo ---------------------------------------------------------------
echo.
echo ==============================================================================
echo                    %L_BLUE%Comprehensive Maintenance Utility%RESET%
echo ==============================================================================
echo.  %L_BLUE%Main Menu:%RESET%
echo ---------------------------------------------------------------
echo %L_RED%[1]%RESET%  Clean Cache and Temporary Files
echo %L_RED%[2]%RESET%  Restart Wireless Network Adapter
echo %L_RED%[3]%RESET%  Empty Recycle Bin
echo %L_RED%[4]%RESET%  Schedule System Shutdown in 3 Hours
echo %L_RED%[5]%RESET%  Schedule System Restart
echo %L_RED%[6]%RESET%  Windows Updates Options
echo %L_RED%[7]%RESET%  Run System Health Checks (SFC, CHKDSK, DISM)
echo %L_RED%[8]%RESET%  View Maintenance Log
echo %L_RED%[9]%RESET%  Visit Developer Websites
echo %L_RED%[10]%RESET% Disk Defragmentation
echo %L_RED%[11]%RESET% Startup Optimization
echo %L_RED%[12]%RESET% Driver Updates
echo %L_RED%[13]%RESET% Restore Points Management
echo %L_RED%[14]%RESET% System Information
echo %L_RED%[15]%RESET% Network Diagnostics
echo %L_RED%[16]%RESET% Automated Backup Utility
echo %L_RED%[17]%RESET% Clean Event Logs
echo %L_RED%[18]%RESET% Check Antivirus Status
echo %L_RED%[19]%RESET% Backup Network Configurations
echo %L_RED%[20]%RESET% Power Settings Optimization
echo %L_RED%[21]%RESET% Launch Chris Titus Tech Windows Utility
echo %L_RED%[22]%RESET% Disk Space Visualization
echo %L_RED%[23]%RESET% Battery Health Check
echo %L_RED%[24]%RESET% Internet Speed Test
echo %L_RED%[25]%RESET% File Encryption Utility
echo %L_RED%[26]%RESET% System Resource Monitor
echo %L_RED%[27]%RESET% Exit
echo.
echo ---------------------------------------------------------------
set /p choice=Enter your choice (1-27): 

:: Handle Main Menu Choices
if "%choice%"=="1" goto clean_cache
if "%choice%"=="2" goto restart_wifi
if "%choice%"=="3" goto empty_recycle_bin
if "%choice%"=="4" goto schedule_shutdown
if "%choice%"=="5" goto schedule_restart_menu
if "%choice%"=="6" goto windows_updates_menu
if "%choice%"=="7" goto system_health_checks
if "%choice%"=="8" goto view_log
if "%choice%"=="9" goto visit_websites
if "%choice%"=="10" goto disk_defragmentation
if "%choice%"=="11" goto startup_optimization
if "%choice%"=="12" goto driver_updates
if "%choice%"=="13" goto restore_points_menu
if "%choice%"=="14" goto system_information
if "%choice%"=="15" goto network_diagnostics
if "%choice%"=="16" goto automated_backup
if "%choice%"=="17" goto clean_event_logs
if "%choice%"=="18" goto check_antivirus
if "%choice%"=="19" goto backup_network
if "%choice%"=="20" goto power_settings
if "%choice%"=="21" goto launch_chris_titus_utility
if "%choice%"=="22" goto disk_space_visualization
if "%choice%"=="23" goto battery_health_check
if "%choice%"=="24" goto internet_speed_test
if "%choice%"=="25" goto file_encryption_utility
if "%choice%"=="26" goto system_resource_monitor
if "%choice%"=="27" goto exit_script
echo Invalid choice. Please select a valid option.
pause
goto main_menu

:launch_chris_titus_utility
cls
echo.
echo ==============================================================================
echo                       %L_BLUE%Launching Chris Titus Tech Windows Utility%RESET%
echo ==============================================================================
echo.
call :log "Launching Chris Titus Tech Windows Utility." 

:: Launch the Chris Titus Tech Windows Utility
powershell -Command "Start-Process powershell -Verb RunAs -ArgumentList '-Command', 'irm christitus.com/win | iex'"

echo.
echo Chris Titus Tech Windows Utility launched successfully.
call :log "Chris Titus Tech Windows Utility launched successfully."
echo.
pause
goto main_menu


:: ------------------ Option Implementations ------------------

:clean_cache
cls
echo.
echo ==============================================================================
echo                       %L_BLUE%Cleaning Cache and Temporary Files%RESET%
echo ==============================================================================
echo.
call :log "Started cleaning cache and temporary files."

:: Show disk space before cleanup
echo Disk space before cleanup:
wmic logicaldisk get size,freespace,caption
echo.
call :log "Displayed disk space before cleanup."

:: Define cleanup tasks
set "tasks=Temp WindowsTemp Prefetch IECache DNSCache WindowsUpdate ExplorerCache EdgeCache DriverCache"

:: Function to clean specific folders
for %%T in (%tasks%) do (
    echo Cleaning %%T...
    call :log "Cleaning %%T."
    if "%%T"=="Temp" (
        set "folder=%temp%"
    ) else if "%%T"=="WindowsTemp" (
        set "folder=C:\Windows\Temp"
    ) else if "%%T"=="Prefetch" (
        set "folder=C:\Windows\Prefetch"
    ) else if "%%T"=="IECache" (
        echo Clearing Internet Explorer cache...
        RunDll32.exe InetCpl.cpl,ClearMyTracksByProcess 8
        call :log "Cleared Internet Explorer cache."
        goto :continue_cleaning
    ) else if "%%T"=="DNSCache" (
        echo Flushing DNS cache...
        ipconfig /flushdns
        call :log "Flushed DNS cache."
        goto :continue_cleaning
    ) else if "%%T"=="WindowsUpdate" (
        echo Cleaning Windows Update cache...
        net stop wuauserv >> "%logfile%" 2>&1
        rd /s /q "%windir%\SoftwareDistribution\DataStore" >> "%logfile%" 2>&1
        rd /s /q "%windir%\SoftwareDistribution\Download" >> "%logfile%" 2>&1
        net start wuauserv >> "%logfile%" 2>&1
        call :log "Cleaned Windows Update cache."
        goto :continue_cleaning
    ) else if "%%T"=="ExplorerCache" (
        set "folder=%USERPROFILE%\AppData\Local\Microsoft\Windows\Explorer"
    ) else if "%%T"=="EdgeCache" (
        set "folder=%LOCALAPPDATA%\Packages\Microsoft.MicrosoftEdge_*\AC\MicrosoftEdge\User\Default\Cache"
    ) else if "%%T"=="DriverCache" (
        set "folder=%SystemRoot%\System32\DriverStore\FileRepository"
    )
    
    echo Deleting files in !folder!...
    echo Deleting files in !folder!... >> "%logfile%"
    for /f "delims=" %%F in ('dir /s /b "!folder!\*" 2^>nul') do (
        del /f /s /q "%%F" >> "%logfile%" 2>&1
    )
    rd /s /q "!folder!" >> "%logfile%" 2>&1
    echo %%T cleaned.
    call :log "Cleaned %%T."
    :continue_cleaning
)
:: Run Disk Cleanup
echo Running Disk Cleanup for system files...
cleanmgr /sagerun:1
call :log "Ran Disk Cleanup."
:: Show disk space after cleanup
echo.
echo Disk space after cleanup:
wmic logicaldisk get size,freespace,caption
echo.
call :log "Displayed disk space after cleanup."
echo Cache and temporary files cleaning completed!
echo.
pause
goto main_menu

:restart_wifi
cls
echo.
echo ==============================================================================
echo                  %L_BLUE%Restarting Wireless Network Adapter%RESET%
echo ==============================================================================
echo.
call :log "Attempting to restart wireless network adapter."

:: Identify wireless adapter name
for /f "tokens=2 delims=:" %%a in ('netsh interface show interface ^| findstr /R /C:"Wi-Fi" /C:"Wireless"') do (
    set "adapter_name=%%a"
    set "adapter_name=!adapter_name:~1!"
    goto :found_adapter
)

echo No wireless adapter found.
call :log "No wireless adapter found."
pause
goto main_menu

:found_adapter
echo Detected Wireless Adapter: !adapter_name!
call :log "Wireless adapter detected: !adapter_name!."

:: Disable the adapter
netsh interface set interface name="!adapter_name!" admin=disable
if %errorlevel%==0 (
    echo Disabled wireless adapter.
    call :log "Disabled wireless adapter: !adapter_name!."
) else (
    echo Failed to disable wireless adapter.
    call :log "Failed to disable wireless adapter: !adapter_name!."
    pause
    goto main_menu
)

:: Wait for 5 seconds
timeout /t 5 /nobreak >nul

:: Enable the adapter
netsh interface set interface name="!adapter_name!" admin=enable
if %errorlevel%==0 (
    echo Enabled wireless adapter.
    call :log "Enabled wireless adapter: !adapter_name!."
    echo Wireless adapter restarted successfully.
    call :log "Wireless adapter restarted successfully."
) else (
    echo Failed to enable wireless adapter.
    call :log "Failed to enable wireless adapter: !adapter_name!."
)
echo.
pause
goto main_menu

:empty_recycle_bin
cls
echo.
echo ==============================================================================
echo                         %L_BLUE%Emptying Recycle Bin%RESET%
echo ==============================================================================
echo.
call :log "Started emptying Recycle Bin."

:: Use PowerShell to empty Recycle Bin
PowerShell.exe -NoProfile -Command "Clear-RecycleBin -Force -ErrorAction SilentlyContinue"
if %errorlevel%==0 (
    echo Recycle Bin emptied successfully.
    call :log "Recycle Bin emptied successfully."
) else (
    echo Failed to empty Recycle Bin.
    call :log "Failed to empty Recycle Bin."
)
echo.
pause
goto main_menu

:schedule_shutdown
cls
echo.
echo ==============================================================================
echo              %L_BLUE%Schedule System Shutdown in 3 Hours%RESET%
echo ==============================================================================
echo.
call :log "Scheduling system shutdown in 3 hours."

shutdown /s /t 10800 /c "System will shut down in 3 hours for maintenance."
if %errorlevel%==0 (
    echo System shutdown scheduled in 3 hours.
    call :log "System shutdown scheduled successfully."
) else (
    echo Failed to schedule system shutdown.
    call :log "Failed to schedule system shutdown."
)
echo.
pause
goto main_menu

:schedule_restart_menu
cls
echo.
echo ==============================================================================
echo                    %L_BLUE%Schedule System Restart%RESET%
echo ==============================================================================
echo.
echo [1] Daily Restart
echo [2] Weekly Restart
echo [3] Biweekly Restart
echo [4] Cancel Scheduled Restarts
echo [5] Back to Main Menu
echo.
set /p restart_choice=Choose an option (1-5): 

if "%restart_choice%"=="1" goto schedule_daily_restart
if "%restart_choice%"=="2" goto schedule_weekly_restart
if "%restart_choice%"=="3" goto schedule_biweekly_restart
if "%restart_choice%"=="4" goto cancel_scheduled_restarts
if "%restart_choice%"=="5" goto main_menu
echo Invalid choice. Please select a valid option.
pause
goto schedule_restart_menu

:schedule_daily_restart
cls
echo.
echo ==============================================================================
echo                      %L_BLUE%Schedule Daily Restart%RESET%
echo ==============================================================================
echo.
set /p time_input=Enter restart time (HH:MM in 24-hour format): 
echo Setting daily restart at %time_input%...
call :log "Scheduling daily restart at %time_input%."

schtasks /create /tn "DailyRestart" /tr "shutdown /r /t 0" /sc daily /st %time_input% /F
if %errorlevel%==0 (
    echo Daily restart scheduled at %time_input%.
    call :log "Daily restart scheduled at %time_input%."
) else (
    echo Failed to schedule daily restart.
    call :log "Failed to schedule daily restart."
)
echo.
pause
goto main_menu

:schedule_weekly_restart
cls
echo.
echo ==============================================================================
echo                     %L_BLUE%Schedule Weekly Restart%RESET%
echo ==============================================================================
echo.
echo Available days: MON, TUE, WED, THU, FRI, SAT, SUN
set /p day_input=Enter day for restart (e.g., MON): 
set /p time_input=Enter restart time (HH:MM in 24-hour format): 
echo Setting weekly restart on %day_input% at %time_input%...
call :log "Scheduling weekly restart on %day_input% at %time_input%."

schtasks /create /tn "WeeklyRestart" /tr "shutdown /r /t 0" /sc weekly /d %day_input% /st %time_input% /F
if %errorlevel%==0 (
    echo Weekly restart scheduled on %day_input% at %time_input%.
    call :log "Weekly restart scheduled on %day_input% at %time_input%."
) else (
    echo Failed to schedule weekly restart.
    call :log "Failed to schedule weekly restart."
)
echo.
pause
goto main_menu

:schedule_biweekly_restart
cls
echo.
echo ==============================================================================
echo                   %L_BLUE%Schedule Biweekly Restart%RESET%
echo ==============================================================================
echo.
echo Available days: MON, TUE, WED, THU, FRI, SAT, SUN
set /p day1=Enter first day for restart (e.g., MON): 
set /p day2=Enter second day for restart (e.g., WED): 
set /p time_input=Enter restart time (HH:MM in 24-hour format): 
echo Setting biweekly restart on %day1% and %day2% at %time_input%...
call :log "Scheduling biweekly restart on %day1% and %day2% at %time_input%."

schtasks /create /tn "BiWeeklyRestart1" /tr "shutdown /r /t 0" /sc weekly /d %day1% /st %time_input% /F
schtasks /create /tn "BiWeeklyRestart2" /tr "shutdown /r /t 0" /sc weekly /d %day2% /st %time_input% /F

if %errorlevel%==0 (
    echo Biweekly restarts scheduled on %day1% and %day2% at %time_input%.
    call :log "Biweekly restarts scheduled on %day1% and %day2% at %time_input%."
) else (
    echo Failed to schedule biweekly restarts.
    call :log "Failed to schedule biweekly restarts."
)
echo.
pause
goto main_menu

:cancel_scheduled_restarts
cls
echo.
echo ==============================================================================
echo                %L_BLUE%Cancel Scheduled System Restarts%RESET%
echo ==============================================================================
echo.
echo Are you sure you want to cancel all scheduled restarts? (y/n)
set /p confirm=Choice: 
if /i "%confirm%"=="y" (
    schtasks /delete /tn "DailyRestart" /f >> "%logfile%" 2>&1
    schtasks /delete /tn "WeeklyRestart" /f >> "%logfile%" 2>&1
    schtasks /delete /tn "BiWeeklyRestart1" /f >> "%logfile%" 2>&1
    schtasks /delete /tn "BiWeeklyRestart2" /f >> "%logfile%" 2>&1
    echo All scheduled restarts have been canceled.
    call :log "Canceled all scheduled restarts."
) else (
    echo Cancellation aborted.
    call :log "User aborted cancellation of scheduled restarts."
)
echo.
pause
goto main_menu

:windows_updates_menu
cls
echo.
echo ==============================================================================
echo                      %L_BLUE%Windows Updates Options%RESET%
echo ==============================================================================
echo.
echo [1] Check for Updates
echo [2] Install Available Updates
echo [3] Configure Update Settings
echo [4] Back to Main Menu
echo.
set /p update_choice=Choose an option (1-4): 

if "%update_choice%"=="1" goto check_updates
if "%update_choice%"=="2" goto install_updates
if "%update_choice%"=="3" goto configure_updates
if "%update_choice%"=="4" goto main_menu
echo Invalid choice. Please select a valid option.
pause
goto windows_updates_menu

:check_updates
cls
echo.
echo ==============================================================================
echo                      %L_BLUE%Checking for Windows Updates%RESET%
echo ==============================================================================
echo.
call :log "Checking for Windows updates."
:: Install PSWindowsUpdate module if not present
PowerShell.exe -NoProfile -Command "if (-not (Get-Module -ListAvailable PSWindowsUpdate)) { Install-Module PSWindowsUpdate -Force -Confirm:\$false }"
:: Check for updates
PowerShell.exe -NoProfile -Command "Import-Module PSWindowsUpdate; Get-WindowsUpdate -AcceptAll -IgnoreReboot"
echo.
echo Windows update check completed. Please review the output above.
call :log "Completed Windows update check."
pause
goto windows_updates_menu

:install_updates
cls
echo.
echo ==============================================================================
echo                    %L_BLUE%Installing Available Updates%RESET%
echo ==============================================================================
echo.
call :log "Installing available Windows updates."
:: Install updates
PowerShell.exe -NoProfile -Command "Import-Module PSWindowsUpdate; Install-WindowsUpdate -AcceptAll -IgnoreReboot -AutoReboot"
echo.
echo Windows updates installation completed.
call :log "Completed installation of Windows updates."
pause
goto windows_updates_menu

:configure_updates
cls
echo.
echo ==============================================================================
echo                 %L_BLUE%Configure Windows Update Settings%RESET%
echo ==============================================================================
echo.
echo [1] Enable Automatic Updates
echo [2] Disable Automatic Updates
echo [3] Set Active Hours
echo [4] Back to Windows Updates Menu
echo.
set /p config_choice=Choose an option (1-4): 

if "%config_choice%"=="1" goto enable_auto_updates
if "%config_choice%"=="2" goto disable_auto_updates
if "%config_choice%"=="3" goto set_active_hours
if "%config_choice%"=="4" goto windows_updates_menu
echo Invalid choice. Please select a valid option.
pause
goto configure_updates

:enable_auto_updates
cls
echo.
echo ==============================================================================
echo                 %L_BLUE%Enable Automatic Windows Updates%RESET%
echo ==============================================================================
echo.
call :log "Enabling automatic Windows updates."

:: Use PowerShell to set automatic updates to "4 - Auto download and schedule the install"
PowerShell.exe -NoProfile -Command "Set-ItemProperty -Path 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\WindowsUpdate\Auto Update' -Name 'AUOptions' -Value 4"

if %errorlevel%==0 (
    echo Automatic updates have been enabled.
    call :log "Automatic updates enabled."
) else (
    echo Failed to enable automatic updates.
    call :log "Failed to enable automatic updates."
)
echo.
pause
goto configure_updates

:disable_auto_updates
cls
echo.
echo ==============================================================================
echo                 %L_BLUE%Disable Automatic Windows Updates%RESET%
echo ==============================================================================
echo.
call :log "Disabling automatic Windows updates."

:: Use PowerShell to set automatic updates to "1 - Never check for updates"
PowerShell.exe -NoProfile -Command "Set-ItemProperty -Path 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\WindowsUpdate\Auto Update' -Name 'AUOptions' -Value 1"

if %errorlevel%==0 (
    echo Automatic updates have been disabled.
    call :log "Automatic updates disabled."
) else (
    echo Failed to disable automatic updates.
    call :log "Failed to disable automatic updates."
)
echo.
pause
goto configure_updates

:set_active_hours
cls
echo.
echo ==============================================================================
echo                      %L_BLUE%Set Windows Active Hours%RESET%
echo ==============================================================================
echo.
set /p start_hour=Enter start hour (0-23): 
set /p end_hour=Enter end hour (0-23): 
echo Setting active hours from %start_hour% to %end_hour%...
call :log "Setting Windows active hours from %start_hour% to %end_hour%."

:: Use PowerShell to set active hours
PowerShell.exe -NoProfile -Command ^
"Set-ItemProperty -Path 'HKLM:\SOFTWARE\Microsoft\WindowsUpdate\UX\Settings' -Name 'ActiveHoursStart' -Value %start_hour%"; ^
"Set-ItemProperty -Path 'HKLM:\SOFTWARE\Microsoft\WindowsUpdate\UX\Settings' -Name 'ActiveHoursEnd' -Value %end_hour%"

if %errorlevel%==0 (
    echo Active hours set from %start_hour% to %end_hour%.
    call :log "Active hours set from %start_hour% to %end_hour%."
) else (
    echo Failed to set active hours.
    call :log "Failed to set active hours."
)
echo.
pause
goto configure_updates

:system_health_checks
cls
echo.
echo ==============================================================================
echo                    %L_BLUE%Running System Health Checks%RESET%
echo ==============================================================================
echo.
echo [1] Run System File Checker (SFC)
echo [2] Run Check Disk (CHKDSK)
echo [3] Run Deployment Image Servicing and Management (DISM)
echo [4] Run All Health Checks
echo [5] Additional Diagnostics (Drivers, RAM, SMART)
echo [6] Back to Main Menu
echo.
set /p health_choice=Choose an option (1-6): 

if "%health_choice%"=="1" goto run_sfc
if "%health_choice%"=="2" goto run_chkdsk
if "%health_choice%"=="3" goto run_dism
if "%health_choice%"=="4" goto run_all_health_checks
if "%health_choice%"=="5" goto additional_diagnostics
if "%health_choice%"=="6" goto main_menu
echo Invalid choice. Please select a valid option.
pause
goto system_health_checks

:run_sfc
cls
echo.
echo ==============================================================================
echo                      %L_BLUE%Running System File Checker%RESET%
echo ==============================================================================
echo.
call :log "Started System File Checker (SFC) scan."
sfc /scannow
if %errorlevel%==0 (
    echo SFC scan completed successfully.
    call :log "SFC scan completed successfully."
) else (
    echo SFC scan encountered issues.
    call :log "SFC scan encountered issues."
)
echo.
pause
goto system_health_checks

:run_chkdsk
cls
echo.
echo ==============================================================================
echo                      %L_BLUE%Running Check Disk (CHKDSK)%RESET%
echo ==============================================================================
echo.
call :log "Started Check Disk (CHKDSK) scan."
echo NOTE: CHKDSK may require a system reboot to complete.
chkdsk C: /f /r
echo.
call :log "CHKDSK scan completed (may require reboot)."
pause
goto system_health_checks

:run_dism
cls
echo.
echo ==============================================================================
echo       %L_BLUE%Running Deployment Image Servicing and Management (DISM)%RESET%
echo ==============================================================================
echo.
call :log "Started Deployment Image Servicing and Management (DISM) scan."
DISM /Online /Cleanup-Image /RestoreHealth
if %errorlevel%==0 (
    echo DISM scan completed successfully.
    call :log "DISM scan completed successfully."
) else (
    echo DISM scan encountered issues.
    call :log "DISM scan encountered issues."
)
echo.
pause
goto system_health_checks

:run_all_health_checks
cls
echo.
echo ==============================================================================
echo                 %L_BLUE%Running All System Health Checks%RESET%
echo ==============================================================================
echo.
call :log "Started all system health checks."

:: Run SFC
echo Running System File Checker (SFC)...
sfc /scannow
call :log "Completed SFC scan."

:: Run DISM
echo Running Deployment Image Servicing and Management (DISM)...
DISM /Online /Cleanup-Image /RestoreHealth
call :log "Completed DISM scan."

:: Run CHKDSK
echo Running Check Disk (CHKDSK)...
echo NOTE: CHKDSK may require a system reboot to complete.
chkdsk C: /f /r
call :log "Completed CHKDSK scan (may require reboot)."

echo All system health checks completed.
echo.
pause
goto system_health_checks

:additional_diagnostics
cls
echo.
echo ==============================================================================
echo                  %L_BLUE%Running Additional Diagnostics%RESET%
echo ==============================================================================
echo.
echo [1] Check Driver Status
echo [2] RAM and Memory Information
echo [3] SMART Disk Status
echo [4] Back to System Health Checks Menu
echo.
set /p diag_choice=Choose an option (1-4): 

if "%diag_choice%"=="1" goto check_driver_status
if "%diag_choice%"=="2" goto ram_memory_info
if "%diag_choice%"=="3" goto smart_disk_status
if "%diag_choice%"=="4" goto system_health_checks
echo Invalid choice. Please select a valid option.
pause
goto additional_diagnostics

:check_driver_status
cls
echo.
echo ==============================================================================
echo                         %L_BLUE%Checking Driver Status%RESET%
echo ==============================================================================
echo.
call :log "Checking driver statuses."
:: List all drivers with their statuses
driverquery /v /fo list | more
echo.
echo Driver status check completed.
call :log "Completed driver status check."
echo.
pause
goto additional_diagnostics

:ram_memory_info
cls
echo.
echo ==============================================================================
echo                      %L_BLUE%RAM and Memory Information%RESET%
echo ==============================================================================
echo.
call :log "Retrieving RAM and memory information."
:: Display total physical memory and available memory
systeminfo | findstr /C:"Total Physical Memory" /C:"Available Physical Memory"
echo.
echo RAM and memory information retrieved.
call :log "Retrieved RAM and memory information."
echo.
pause
goto additional_diagnostics

:smart_disk_status
cls
echo.
echo ==============================================================================
echo                          %L_BLUE%SMART Disk Status%RESET%
echo ==============================================================================
echo.
call :log "Checking SMART status of disks."

:: Use WMIC to check SMART status
wmic diskdrive get model,status

echo.
echo SMART disk status check completed.
call :log "Completed SMART disk status check."
echo.
pause
goto additional_diagnostics

:view_log
cls
echo.
echo ==============================================================================
echo                           %L_BLUE%Maintenance Log%RESET%
echo ==============================================================================
echo.
if exist "%logfile%" (
    type "%logfile%" | more
) else (
    echo No log file found.
)
echo.
pause
goto main_menu

:visit_websites
cls
echo.
echo ==============================================================================
echo                      %L_BLUE%Visit Developer Websites%RESET%
echo ==============================================================================
echo.
echo [1] Visit Hugging Face Profile
echo [2] Visit GitHub Repository
echo [3] Back to Main Menu
echo.
set /p website_choice=Choose an option (1-3): 

if "%website_choice%"=="1" (
    start https://huggingface.co/BenevolenceMessiah
    call :log "Opened Hugging Face profile."
    echo Opening Hugging Face profile...
    pause
    goto visit_websites
)

if "%website_choice%"=="2" (
    start https://github.com/BenevolenceMessiah
    call :log "Opened GitHub repository."
    echo Opening GitHub repository...
    pause
    goto visit_websites
)

if "%website_choice%"=="3" goto main_menu
echo Invalid choice. Please select a valid option.
pause
goto visit_websites

:disk_defragmentation
cls
echo.
echo ==============================================================================
echo                      %L_BLUE%Disk Defragmentation%RESET%
echo ==============================================================================
echo.
call :log "Starting disk defragmentation."
echo The following drives are available for defragmentation:
echo.
:: List all fixed drives
wmic logicaldisk where drivetype=3 get deviceid, volumename, filesystem
echo.
set /p defrag_choice=Enter the drive letter to defragment (e.g., C): 
echo Defragmenting drive %defrag_choice%:
call :log "Defragmenting drive %defrag_choice%."
defrag %defrag_choice%: /U /V
if %errorlevel%==0 (
    echo Defragmentation of drive %defrag_choice% completed.
    call :log "Defragmentation of drive %defrag_choice% completed."
) else (
    echo Failed to defragment drive %defrag_choice%.
    call :log "Failed to defragment drive %defrag_choice%."
)
echo.
pause
goto main_menu

:startup_optimization
cls
echo.
echo ==============================================================================
echo                     %L_BLUE%Startup Optimization%RESET%
echo ==============================================================================
echo.
call :log "Starting startup optimization."
echo Listing startup programs...
echo.
:: Use WMIC to list startup programs
wmic startup get Caption, Command, User | more
echo.
echo To disable startup programs, use Task Manager or System Configuration.
echo Automating this process via script is not recommended.
call :log "Displayed startup programs."
echo.
pause
goto main_menu

:driver_updates
cls
echo.
echo ==============================================================================
echo                        %L_BLUE%Driver Updates%RESET%
echo ==============================================================================
echo.
call :log "Starting driver updates."
echo Checking for driver updates...
echo.
:: Use PowerShell to check for driver updates
PowerShell.exe -NoProfile -Command ^
"if (-not (Get-Module -ListAvailable PSWindowsUpdate)) { Install-Module PSWindowsUpdate -Force -Confirm:\$false }"; ^
"Import-Module PSWindowsUpdate; Get-WindowsUpdate -MicrosoftUpdate -AcceptAll -AutoReboot -Category 'Drivers'"
if %errorlevel%==0 (
    echo Driver updates check completed.
    call :log "Driver updates check completed."
) else (
    echo Failed to check for driver updates.
    call :log "Failed to check for driver updates."
)
echo.
pause
goto main_menu

:restore_points_menu
cls
echo.
echo ==============================================================================
echo                      %L_BLUE%Restore Points Management%RESET%
echo ==============================================================================
echo.
echo [1] Create a Restore Point
echo [2] List Restore Points
echo [3] Restore System to a Restore Point
echo [4] Delete Restore Points
echo [5] Back to Main Menu
echo.
set /p rp_choice=Choose an option (1-5): 

if "%rp_choice%"=="1" goto create_restore_point
if "%rp_choice%"=="2" goto list_restore_points
if "%rp_choice%"=="3" goto restore_system
if "%rp_choice%"=="4" goto delete_restore_points
if "%rp_choice%"=="5" goto main_menu
echo Invalid choice. Please select a valid option.
pause
goto restore_points_menu

:create_restore_point
cls
echo.
echo ==============================================================================
echo                       %L_BLUE%Create a Restore Point%RESET%
echo ==============================================================================
echo.
set /p rp_name=Enter a name for the restore point: 
echo Creating restore point "%rp_name%"...
call :log "Creating restore point '%rp_name%'."
PowerShell.exe -NoProfile -Command "Checkpoint-Computer -Description '%rp_name%' -RestorePointType 'MODIFY_SETTINGS'"
if %errorlevel%==0 (
    echo Restore point "%rp_name%" created successfully.
    call :log "Restore point '%rp_name%' created successfully."
) else (
    echo Failed to create restore point.
    call :log "Failed to create restore point."
)
echo.
pause
goto restore_points_menu

:list_restore_points
cls
echo.
echo ==============================================================================
echo                         %L_BLUE%List Restore Points%RESET%
echo ==============================================================================
echo.
call :log "Listing restore points."
PowerShell.exe -NoProfile -Command "Get-ComputerRestorePoint | Format-Table -AutoSize"
echo.
pause
goto restore_points_menu

:restore_system
cls
echo.
echo ==============================================================================
echo                  %L_BLUE%Restore System to a Restore Point%RESET%
echo ==============================================================================
echo.
call :log "Initiating system restore."
echo Note: Restoring the system requires a reboot and may cause data loss.
echo It's recommended to save all your work before proceeding.
echo.
echo Do you want to proceed with system restore? (y/n)
set /p confirm_restore=
if /i "%confirm_restore%"=="y" (
    start %windir%\system32\rstrui.exe
    call :log "Launched System Restore GUI."
) else (
    echo System restore cancelled.
    call :log "System restore cancelled by user."
)
echo.
pause
goto restore_points_menu

:delete_restore_points
cls
echo.
echo ==============================================================================
echo                       %L_BLUE%Delete Restore Points%RESET%
echo ==============================================================================
echo.
call :log "Deleting restore points."
echo WARNING: This will delete all restore points except the most recent one.
echo Are you sure you want to proceed? (y/n)
set /p confirm_delete=
if /i "%confirm_delete%"=="y" (
    vssadmin delete shadows /for=C: /all /quiet
    echo All restore points have been deleted.
    call :log "Deleted all restore points."
) else (
    echo Deletion of restore points cancelled.
    call :log "Deletion of restore points cancelled by user."
)
echo.
pause
goto restore_points_menu

:system_information
cls
echo.
echo ==============================================================================
echo                          %L_BLUE%System Information%RESET%
echo ==============================================================================
echo.
call :log "Displaying system information."
systeminfo | more
echo.
pause
goto main_menu

:network_diagnostics
cls
echo.
echo ==============================================================================
echo                       %L_BLUE%Network Diagnostics%RESET%
echo ==============================================================================
echo.
call :log "Running network diagnostics."
echo IP Configuration:
ipconfig /all | more
echo.
echo Testing connectivity to common sites...
ping -n 4 google.com
ping -n 4 microsoft.com
echo.
echo Network diagnostics completed.
call :log "Network diagnostics completed."
echo.
pause
goto main_menu

:automated_backup
cls
echo.
echo ==============================================================================
echo                     %L_BLUE%Automated Backup Utility%RESET%
echo ==============================================================================
echo.
echo [1] Backup Important Files and Folders
echo [2] Schedule Regular Backups
echo [3] Restore from Backup
echo [4] Back to Main Menu
echo.
set /p backup_choice=Choose an option (1-4): 

if "%backup_choice%"=="1" goto perform_backup
if "%backup_choice%"=="2" goto schedule_backup
if "%backup_choice%"=="3" goto restore_backup
if "%backup_choice%"=="4" goto main_menu
echo Invalid choice. Please select a valid option.
pause
goto automated_backup

:perform_backup
cls
echo.
echo ==============================================================================
echo                      %L_BLUE%Performing Backup%RESET%
echo ==============================================================================
echo.
set /p backup_source=Enter the source directory to backup (e.g., C:\Users\YourName\Documents):
set /p backup_dest=Enter the destination directory for backup (e.g., D:\Backups\DocumentsBackup):
echo Starting backup from %backup_source% to %backup_dest%...
call :log "Starting backup from %backup_source% to %backup_dest%."

:: Create destination directory if it doesn't exist
if not exist "%backup_dest%" (
    mkdir "%backup_dest%" >> "%logfile%" 2>&1
    if %errorlevel%==0 (
        echo Created destination directory: %backup_dest%
        call :log "Created destination directory: %backup_dest%."
    ) else (
        echo Failed to create destination directory.
        call :log "Failed to create destination directory: %backup_dest%."
        pause
        goto automated_backup
    )
)

:: Perform backup using robocopy
robocopy "%backup_source%" "%backup_dest%" /MIR /Z /XA:H /W:5 /R:3 >> "%logfile%" 2>&1
if %errorlevel% GEQ 8 (
    echo Backup completed with some issues. Check the log file for details.
    call :log "Backup completed with some issues."
) else (
    echo Backup completed successfully.
    call :log "Backup completed successfully."
)
echo.
pause
goto automated_backup

:schedule_backup
cls
echo.
echo ==============================================================================
echo                     %L_BLUE%Schedule Regular Backups%RESET%
echo ==============================================================================
echo.
set /p schedule_time=Enter backup time (HH:MM in 24-hour format): 
set /p frequency=Enter backup frequency (daily, weekly, monthly): 

echo Setting up %frequency% backup at %schedule_time%...
call :log "Scheduling %frequency% backup at %schedule_time%."

:: Define the backup script command
set "backup_command=%~f0"
set "backup_task_cmd=cmd /c \"%backup_command% perform_backup\""

:: Create scheduled task based on frequency
if /i "%frequency%"=="daily" (
    schtasks /create /tn "AutomatedBackup" /tr "%backup_task_cmd%" /sc daily /st %schedule_time% /F
) else if /i "%frequency%"=="weekly" (
    set /p backup_day=Enter day of the week for backup (MON, TUE, etc.): 
    schtasks /create /tn "AutomatedBackup" /tr "%backup_task_cmd%" /sc weekly /d %backup_day% /st %schedule_time% /F
) else if /i "%frequency%"=="monthly" (
    set /p backup_day_month=Enter day of the month for backup (1-28): 
    schtasks /create /tn "AutomatedBackup" /tr "%backup_task_cmd%" /sc monthly /d %backup_day_month% /st %schedule_time% /F
) else (
    echo Invalid frequency selected.
    call :log "Invalid frequency selected for scheduled backup."
    pause
    goto automated_backup
)

if %errorlevel%==0 (
    echo Scheduled %frequency% backup at %schedule_time%.
    call :log "Scheduled %frequency% backup at %schedule_time%."
) else (
    echo Failed to schedule backup.
    call :log "Failed to schedule %frequency% backup at %schedule_time%."
)
echo.
pause
goto automated_backup

:restore_backup
cls
echo.
echo ==============================================================================
echo                       %L_BLUE%Restore from Backup%RESET%
echo ==============================================================================
echo.
set /p backup_dest_restore=Enter the backup destination directory (e.g., D:\Backups\DocumentsBackup):
set /p restore_dest=Enter the restore destination directory (e.g., C:\Users\YourName\Documents):
echo Starting restoration from %backup_dest_restore% to %restore_dest%...
call :log "Starting restoration from %backup_dest_restore% to %restore_dest%."

:: Perform restoration using robocopy
robocopy "%backup_dest_restore%" "%restore_dest%" /MIR /Z /XA:H /W:5 /R:3 >> "%logfile%" 2>&1
if %errorlevel% GEQ 8 (
    echo Restoration completed with some issues. Check the log file for details.
    call :log "Restoration completed with some issues."
) else (
    echo Restoration completed successfully.
    call :log "Restoration completed successfully."
)
echo.
pause
goto automated_backup

:clean_event_logs
cls
echo.
echo ==============================================================================
echo                           %L_BLUE%Clean Event Logs%RESET%
echo ==============================================================================
echo.
echo [1] Clear All Event Logs
echo [2] Clear Specific Event Log
echo [3] Back to Main Menu
echo.
set /p event_choice=Choose an option (1-3): 

if "%event_choice%"=="1" goto clear_all_event_logs
if "%event_choice%"=="2" goto clear_specific_event_log
if "%event_choice%"=="3" goto main_menu
echo Invalid choice. Please select a valid option.
pause
goto clean_event_logs

:clear_all_event_logs
cls
echo.
echo ==============================================================================
echo                      %L_BLUE%Clearing All Event Logs%RESET%
echo ==============================================================================
echo.
echo WARNING: This will clear all Windows Event Logs.
echo Are you sure you want to proceed? (y/n)
set /p confirm_event=Choice: 
if /i "%confirm_event%"=="y" (
    for /F "tokens=*" %%G in ('wevtutil el') do (
        echo Clearing %%G...
        call :log "Clearing event log: %%G."
        wevtutil cl "%%G"
    )
    echo All event logs have been cleared.
    call :log "All event logs have been cleared."
) else (
    echo Clearing of event logs cancelled.
    call :log "User cancelled clearing event logs."
)
echo.
pause
goto clean_event_logs

:clear_specific_event_log
cls
echo.
echo ==============================================================================
echo                     %L_BLUE%Clearing Specific Event Log%RESET%
echo ==============================================================================
echo.
echo Available Event Logs:
wevtutil el
echo.
set /p specific_log=Enter the name of the event log to clear (e.g., Application):
echo Clearing event log: %specific_log%...
call :log "Clearing specific event log: %specific_log%."
wevtutil cl "%specific_log%"
if %errorlevel%==0 (
    echo Event log "%specific_log%" cleared successfully.
    call :log "Event log '%specific_log%' cleared successfully."
) else (
    echo Failed to clear event log "%specific_log%".
    call :log "Failed to clear event log '%specific_log%'."
)
echo.
pause
goto clean_event_logs

:check_antivirus
cls
echo.
echo ==============================================================================
echo                      %L_BLUE%Check Antivirus Status%RESET%
echo ==============================================================================
echo.
call :log "Checking antivirus status."
:: Use PowerShell to get antivirus status
PowerShell.exe -NoProfile -Command ^
"Get-CimInstance -Namespace root\SecurityCenter2 -ClassName AntiVirusProduct | Select-Object displayName, productState" | more

:: Interpret productState
echo.
echo Parsing antivirus status...
:: Note: Parsing productState requires additional scripting
:: For simplicity, just display the output
echo Please review the above information to determine your antivirus status.
call :log "Displayed antivirus status."
echo.
pause
goto main_menu

:backup_network
cls
echo.
echo ==============================================================================
echo                  %L_BLUE%Backup Network Configurations%RESET%
echo ==============================================================================
echo.
echo [1] Backup Current Network Settings
echo [2] Restore Network Settings from Backup
echo [3] Back to Main Menu
echo.
set /p net_choice=Choose an option (1-3): 

if "%net_choice%"=="1" goto backup_network_settings
if "%net_choice%"=="2" goto restore_network_settings
if "%net_choice%"=="3" goto main_menu
echo Invalid choice. Please select a valid option.
pause
goto backup_network

:backup_network_settings
cls
echo.
echo ==============================================================================
echo                  %L_BLUE%Backing Up Network Settings%RESET%
echo ==============================================================================
echo.
set "network_backup=%~dp0NetworkBackup.zip"
echo Exporting network configurations...
call :log "Backing up network configurations."

:: Use PowerShell to export network settings
PowerShell.exe -NoProfile -Command ^
"Get-NetAdapter | Select-Object Name, InterfaceDescription, Status, MACAddress | Export-Csv -Path '%~dp0NetworkAdapters.csv' -NoTypeInformation"

PowerShell.exe -NoProfile -Command ^
"Get-NetIPConfiguration | Export-Clixml -Path '%~dp0NetworkIPConfig.xml'"

:: Compress the backup files
powershell.exe -NoProfile -Command "Compress-Archive -Path '%~dp0NetworkAdapters.csv','%~dp0NetworkIPConfig.xml' -DestinationPath '%network_backup%' -Force"

if exist "%network_backup%" (
    echo Network settings backed up successfully to %network_backup%.
    call :log "Network settings backed up successfully to %network_backup%."
    del "%~dp0NetworkAdapters.csv" "%~dp0NetworkIPConfig.xml"
) else (
    echo Failed to backup network settings.
    call :log "Failed to backup network settings."
)
echo.
pause
goto backup_network

:restore_network_settings
cls
echo.
echo ==============================================================================
echo                 %L_BLUE%Restoring Network Settings%RESET%
echo ==============================================================================
echo.
set "network_backup=%~dp0NetworkBackup.zip"
if not exist "%network_backup%" (
    echo Backup file %network_backup% does not exist.
    call :log "Network backup file %network_backup% does not exist."
    pause
    goto backup_network
)

echo Extracting network settings from %network_backup%...
call :log "Restoring network configurations from %network_backup%."

:: Extract the backup files
powershell.exe -NoProfile -Command "Expand-Archive -Path '%network_backup%' -DestinationPath '%~dp0' -Force"

:: Import network adapter configurations
PowerShell.exe -NoProfile -Command ^
"Import-Csv -Path '%~dp0NetworkAdapters.csv' | ForEach-Object { New-NetAdapterAdvancedProperty -Name $_.Name -DisplayName $_.InterfaceDescription -DisplayValue $_.Status }"

:: Import IP configurations
PowerShell.exe -NoProfile -Command ^
"Import-Clixml -Path '%~dp0NetworkIPConfig.xml' | Set-NetIPConfiguration"

echo Network settings restored successfully.
call :log "Network settings restored successfully."
del "%~dp0NetworkAdapters.csv" "%~dp0NetworkIPConfig.xml"
echo.
pause
goto backup_network

:power_settings
cls
echo.
echo ==============================================================================
echo                    %L_BLUE%Power Settings Optimization%RESET%
echo ==============================================================================
echo.
echo [1] Optimize for Performance
echo [2] Optimize for Energy Saving
echo [3] View Current Power Plan
echo [4] Back to Main Menu
echo.
set /p power_choice=Choose an option (1-4): 

if "%power_choice%"=="1" goto optimize_performance
if "%power_choice%"=="2" goto optimize_energy
if "%power_choice%"=="3" goto view_power_plan
if "%power_choice%"=="4" goto main_menu
echo Invalid choice. Please select a valid option.
pause
goto power_settings

:optimize_performance
cls
echo.
echo ==============================================================================
echo                 %L_BLUE%Optimizing Power Settings for Performance%RESET%
echo ==============================================================================
echo.
call :log "Optimizing power settings for performance."
:: Set High Performance power plan
powercfg -duplicatescheme e9a42b02-d5df-448d-aa00-03f14749eb61 >nul
powercfg -setactive e9a42b02-d5df-448d-aa00-03f14749eb61
if %errorlevel%==0 (
    echo Power settings optimized for performance.
    call :log "Power settings set to High Performance."
) else (
    echo Failed to optimize power settings.
    call :log "Failed to set High Performance power plan."
)
echo.
pause
goto power_settings

:optimize_energy
cls
echo.
echo ==============================================================================
echo                 %L_BLUE%Optimizing Power Settings for Energy Saving%RESET%
echo ==============================================================================
echo.
call :log "Optimizing power settings for energy saving."
:: Set Power Saver power plan
powercfg -duplicatescheme a1841308-3541-4fab-bc81-f71556f20b4a >nul
powercfg -setactive a1841308-3541-4fab-bc81-f71556f20b4a
if %errorlevel%==0 (
    echo Power settings optimized for energy saving.
    call :log "Power settings set to Power Saver."
) else (
    echo Failed to optimize power settings.
    call :log "Failed to set Power Saver power plan."
)
echo.
pause
goto power_settings

:view_power_plan
cls
echo.
echo ==============================================================================
echo                        %L_BLUE%Current Power Plan%RESET%
echo ==============================================================================
echo.
call :log "Displaying current power plan."
powercfg -getactivescheme
echo.
pause
goto power_settings

:disk_space_visualization
cls
echo.
echo ==============================================================================
echo                    %L_BLUE%Disk Space Visualization%RESET%
echo ==============================================================================
echo.
call :log "Displaying disk space visualization."
powershell -Command "& {$drives = Get-WmiObject Win32_LogicalDisk | Where-Object {$_.DriveType -eq 3}; foreach ($drive in $drives) {$used = $drive.Size - $drive.FreeSpace; $usedPercent = [math]::Round(($used / $drive.Size) * 100, 2); $freePercent = 100 - $usedPercent; Write-Host $drive.DeviceID; Write-Host -NoNewline '['; Write-Host -NoNewline ('█' * [math]::Round($usedPercent / 2)) -ForegroundColor Red; Write-Host -NoNewline ('█' * [math]::Round($freePercent / 2)) -ForegroundColor Green; Write-Host ']'; Write-Host ('Used: {0:N2}GB ({1}%)' -f ($used/1GB), $usedPercent); Write-Host ('Free: {0:N2}GB ({1}%)' -f ($drive.FreeSpace/1GB), $freePercent); Write-Host}}"
echo.
pause
goto main_menu

:battery_health_check
cls
echo.
echo ==============================================================================
echo                       %L_BLUE%Battery Health Check%RESET%
echo ==============================================================================
echo.
call :log "Checking battery health."
powershell -Command "& {$battery = Get-WmiObject Win32_Battery; if ($battery) {$designCapacity = $battery.DesignCapacity; $fullChargeCapacity = $battery.FullChargeCapacity; $healthPercentage = ($fullChargeCapacity / $designCapacity) * 100; Write-Host ('Battery Health: {0:N2}%' -f $healthPercentage); Write-Host ('Current Charge: {0}%' -f $battery.EstimatedChargeRemaining)} else {Write-Host 'No battery detected. This might be a desktop computer.'}}"
echo.
pause
goto main_menu

:internet_speed_test
cls
echo.
echo ==============================================================================
echo                       %L_BLUE%Internet Speed Test%RESET%
echo ==============================================================================
echo.
call :log "Running internet speed test."
echo Testing download speed...
powershell -Command "& {$url = 'http://speedtest.ftp.otenet.gr/files/test100k.db'; $start = Get-Date; (New-Object Net.WebClient).DownloadFile($url, 'speedtest.tmp'); $end = Get-Date; $time = ($end - $start).TotalSeconds; $speed = (100 / $time) * 8; Write-Host ('Download Speed: {0:N2} Mbps' -f $speed); Remove-Item 'speedtest.tmp'}"
echo.
pause
goto main_menu

:file_encryption_utility
cls
echo.
echo ==============================================================================
echo                     %L_BLUE%File Encryption Utility%RESET%
echo ==============================================================================
echo.
echo [1] Encrypt a file
echo [2] Decrypt a file
echo [3] Generate new encryption key
echo [4] Back to Main Menu
echo.
set /p encrypt_choice=Choose an option (1-4): 

if "%encrypt_choice%"=="1" goto encrypt_file
if "%encrypt_choice%"=="2" goto decrypt_file
if "%encrypt_choice%"=="3" goto generate_key
if "%encrypt_choice%"=="4" goto main_menu
echo Invalid choice. Please select a valid option.
pause
goto file_encryption_utility

:generate_key
powershell -Command "& {$key = New-Object Byte[] 32; [Security.Cryptography.RNGCryptoServiceProvider]::Create().GetBytes($key); $key | Set-Content '%encryption_key_file%' -Encoding Byte}"
echo New encryption key generated successfully.
pause
goto file_encryption_utility

:encrypt_file
set /p file_to_encrypt=Enter the path of the file to encrypt: 
if not exist "%file_to_encrypt%" (
    echo File not found.
    pause
    goto file_encryption_utility
)
if not exist "%encryption_key_file%" (
    echo Encryption key not found. Generating new key...
    call :generate_key
)
powershell -Command "& {
    $key = Get-Content '%encryption_key_file%' -Encoding Byte
    $content = [System.IO.File]::ReadAllBytes('%file_to_encrypt%')
    $aes = New-Object System.Security.Cryptography.AesManaged
    $aes.Key = $key
    $aes.GenerateIV()
    $encryptor = $aes.CreateEncryptor()
    $encryptedData = $encryptor.TransformFinalBlock($content, 0, $content.Length)
    $combinedData = $aes.IV + $encryptedData
    [System.IO.File]::WriteAllBytes('%file_to_encrypt%.aes', $combinedData)
    $aes.Dispose()
}"
echo File encrypted successfully.
pause
goto file_encryption_utility

:decrypt_file
set /p file_to_decrypt=Enter the path of the file to decrypt: 
if not exist "%file_to_decrypt%" (
    echo File not found.
    pause
    goto file_encryption_utility
)
if not exist "%encryption_key_file%" (
    echo Encryption key not found.
    pause
    goto file_encryption_utility
)
powershell -Command "& {
    $key = Get-Content '%encryption_key_file%' -Encoding Byte
    $combinedData = [System.IO.File]::ReadAllBytes('%file_to_decrypt%')
    $aes = New-Object System.Security.Cryptography.AesManaged
    $aes.Key = $key
    $aes.IV = $combinedData[0..15]
    $decryptor = $aes.CreateDecryptor()
    $decryptedData = $decryptor.TransformFinalBlock($combinedData, 16, $combinedData.Length - 16)
    [System.IO.File]::WriteAllBytes('%file_to_decrypt%.decrypted', $decryptedData)
    $aes.Dispose()
}"
echo File decrypted successfully.
pause
goto file_encryption_utility

:system_resource_monitor
cls
echo.
echo ==============================================================================
echo                    %L_BLUE%System Resource Monitor%RESET%
echo ==============================================================================
echo.
call :log "Displaying system resource usage."
powershell -Command "& {$cpu = (Get-WmiObject Win32_Processor).LoadPercentage; $mem = Get-WmiObject Win32_OperatingSystem; $usedMem = $mem.TotalVisibleMemorySize - $mem.FreePhysicalMemory; $memUsage = ($usedMem / $mem.TotalVisibleMemorySize) * 100; $disk = Get-WmiObject Win32_LogicalDisk -Filter 'DeviceID='C:''; $diskUsage = ($disk.Size - $disk.FreeSpace) / $disk.Size * 100; Write-Host ('CPU Usage: {0}%' -f $cpu); Write-Host ('Memory Usage: {0:N2}%' -f $memUsage); Write-Host ('Disk Usage (C:): {0:N2}%' -f $diskUsage)}"
echo.
pause
goto main_menu

:: -------------------- Progress Bar Function --------------------

:progress_bar
set /a filled=(%1*%~3)/100
set /a empty=%~3-filled
set bar=
for /L %%i in (1,1,%filled%) do set bar=!bar!█
for /L %%i in (1,1,%empty%) do set bar=!bar!░
echo [%bar%] %1%%
goto :eof

:: -------------------- System Tray Icon --------------------

:create_tray_icon
if not exist "%tray_icon%" (
    echo iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAAJcEhZcwAADsMAAA7DAcdvqGQAAAIDSURBVDhPpZLrS5NhGMb3j4SWh0oRQVExD4gonkDpg4hGYKxG6WBogkMZKgPNCEVJFBGdGETEvgwyO9DJE5syZw3PIlPEE9pgBCLZ5XvdMB8Ew8gXbl54nuf63dd9/TxbSV6TXYBOietPTUPgnmE5TS1OdavcLJwy8mwRueue8xP0R0TmE+RRci6wlOqheNLQZA5MxJ7pIGV6v6S+L+ecr3DwCWo+SFqD7oG2W6YhR2l0dELeMnyvvRz+UMWega17Z/ttYPlW+dlfl+d+BF+8M/HwcWLtS1YTZUfRyLOxvJL8Ivfbwm4SXA3gZlw+uM/r4bnx6rrJ4r0pxOLrWUzXn/NwiC5nSE/kpY7LfSMaB7QgyaUpEyrYdlru57uHOxRbz2rDi1eDfIwKZGrEkkPsPUbm7zRFGIxOjpFfwD2dwDYTb6HIgnFBUIJHA1dXE6dRiOMQJbDAedTmI7c4VX1bcE98ckGkMWK56kRYwskAeKsWS3Bd1n5kbzEz4DY6nTCXBa/kPamcTyMtl3uX+MUIySrSgTR8y8LJkgsycZgOqYqVqCE7w9NkpUDTRNvDQxPm+aIXcmkj+QLbPIL+5qfhnaqJk+cqIRyk/tAoIpI/Gq6/yUpVw4buFj4qNiJgLZbFEWd+nJ+V9CXc73lNL0eKJMnE+vIJP/IqOJLR0QiTj6vKzPuUmOFzHHYtb0Czm2sZkMjv77+vRdWfmLBv0+7vQcy+OMJvI0/+j5NQdxw8KzF5Lkl/+5cjL5NyHxjKjlZNXqTYWpJVh6RfOaRSaWlsBbNlNG84p2ibQKs5b2l1m4S9ouyk0mDfBOZtrkEh7Xjkudu+JuWc7PTSyhg2DOQKy6K+H7ZHGMRrDrfjHvltQYVs4aImc23FDhEHrRzl3+HjiP3mDhc0vjtMeYT+003VzzSQPvgIRXKIVDC8xAXxhchf6kHOIz+qhqqasbGtsbB4OjqKJqMVDqWdKN5rSYm3ITrY019YX3BwXVkHFSl7lOqOpB6h7OpykrYufgq/+1H7wIPn0C+7buszv+dhX9a/kjv6HxVPE0v6eQcKr9HASK/x85dBrLnWinQb2C3ZmfM1DF/4MX7iVbMl1r06qnqKx6AuUFbcOV8I2yLc5s+3QsCWCdZ6U4UbTpBrQbXU0MZTXsWICvqRhb98xoICitg7wwcMKR5e7YsOg5Uo/f/N/qKX/gDYiWqWp1wSiGARFKPptgKjiXH/F/U/njmL938wAAAAAElFTkSuQmCC > "%tray_icon%"
)
powershell -Command "& {Add-Type -AssemblyName System.Windows.Forms; $notify = New-Object System.Windows.Forms.NotifyIcon; $notify.Icon = '%tray_icon%'; $notify.Visible = $true; $notify.Text = 'WinMaint Utility'}"
goto :eof

:: -------------------- End of Script --------------------

:exit_script
cls
echo.
echo ==============================================================================
echo                       %L_BLUE%Exiting Maintenance Utility%RESET%
echo ==============================================================================
echo.
call :log "Exiting maintenance utility."
echo Thank you for using the Comprehensive Maintenance Utility!
echo.
powershell -Command "& {$notify = (Get-Process -Id $pid).MainWindowHandle | foreach {[System.Windows.Forms.Control]::FromHandle($_)} | foreach {$_.FindForm()} | foreach {$_.NotifyIcon}; if ($notify) {$notify.Visible = $false; $notify.Dispose()}}"
timeout /t 2 /nobreak >nul
exit

:: -------------------- Helper Functions --------------------

:log
echo [%date% %time%] %~1 >> "%logfile%"
goto :eof

:: -------------------- End of Helper Functions --------------------