@echo off

:: Warning message
echo =====================================================================
echo WARNING: This script is for Windows only. It will remove Securly and MDM,
echo which are school monitoring and management tools. 
echo Please make sure you have checked your school policies before running 
echo this script, as it may violate them. However, this is your device, and 
echo privacy is a human right. Do not allow your school to control your 
echo personal device without your consent.
echo 
echo Disclaimer: I do not accept any responsibility for any academic 
echo consequences you may face for running this script.
echo =====================================================================
pause

:: Check for administrative privileges
net session >nul 2>&1
if %errorlevel% neq 0 (
    echo This script requires administrative privileges. Please run as administrator.
    powershell -command "Start-Process '%~f0' -Verb runAs"
    pause
    exit /b
)

:: Prompt the user to install the school's SSL certificate if they need network access
set /p connectSchool="Do you need to connect to the school network? (y/n): "

if /i "%connectSchool%"=="y" (
    echo Downloading and installing the school's SSL certificate...
    
    :: Download the certificate
    powershell -Command "Invoke-WebRequest -Uri 'https://github.com/temrage/school_ssl_inspection/releases/download/release/ssl.crt' -OutFile '%temp%\school_ssl.crt'"
    
    :: Install the certificate in Trusted Root Certification Authorities
    certutil -addstore -user root "%temp%\school_ssl.crt"
    certutil -addstore root "%temp%\school_ssl.crt"
    
    echo School SSL certificate installed successfully.
) else (
    echo Skipping SSL certificate installation.
)


:: Delete registry values under HKEY_CURRENT_USER
echo Deleting registry entries...

reg delete "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Internet Settings" /v AutoConfigURL /f
reg delete "HKCU\SOFTWARE\Policies\Microsoft\Windows\CurrentVersion\Internet Settings" /v ProxySettingsPerUser /f
reg delete "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Internet Settings\Connections" /v DefaultConnectionSettings /f

echo Registry entries have been deleted.

:: Execute the certutil commands
echo Deleting Securly certificates...

certutil -delstore root "*.securly.com"
certutil -delstore my "*.securly.com"

certutil -delstore -user root "*.securly.com"
certutil -delstore -user my "*.securly.com"

echo Certificates have been deleted.

:: Uninstall MDM 
echo Uninstalling MDM 

%SystemRoot%\system32\msiexec.exe /x{6AD2231F-FF48-4D59-AC26-405AFAE23DB7} MSIRESTARTMANAGERCONTROL=Disable REBOOT="ReallySuppress" /qn 


:: Stop MDM processes
echo Stopping MDM processes...

taskkill /f /im dcagenttrayicon.exe >nul 2>&1
taskkill /f /im dcagentservice.exe >nul 2>&1

:: Delete MDM 
echo Deleting MDM...

rmdir /s /q "C:\Program Files (x86)\DesktopCentral_Agent"
rmdir /s /q "C:\Program Files (x86)\ManageEngine"
rmdir /s /q "C:\Users\admin\AppData\Local\DesktopCentral_Agent"
del /f /q "C:\ProgramData\Microsoft\Windows\Start Menu\Student Software Portal.lnk"
del /f /q "C:\Users\Public\Desktop\Student Software Portal.lnk"

:: Delete MDM-related registry keys
echo Deleting MDM-related registry entries...

reg delete "HKCU\Software\AdventNet\DesktopCentral" /f
reg delete "HKLM\SOFTWARE\WOW6432Node\AdventNet\DesktopCentral" /f

echo MDM processes, files, and registry entries have been removed.

:: Remove ManageEngine services
echo Removing ManageEngine services...

sc stop "ManageEngine UEMS - Agent" >nul 2>&1
sc delete "ManageEngine UEMS - Agent" >nul 2>&1

sc stop "ManageEngine UEMS - Remote Control" >nul 2>&1
sc delete "ManageEngine UEMS - Remote Control" >nul 2>&1

echo ManageEngine services have been removed.
pause
