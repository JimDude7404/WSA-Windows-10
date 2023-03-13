@echo off
:: Check if running with admin privileges
net session >nul 2>&1
if %errorLevel% == 0 (
    echo Running with admin privileges...
) else (
    echo Requesting admin privileges...
    powershell -Command "Start-Process '%~0' -Verb runAs"
    exit /b
)

:: Copy data from WSA folder to new folder in user's documents
echo Copying data to new folder...
set "source=%~dp0WSA"
set "dest=%userprofile%\Documents\WSA"
xcopy "%source%" "%dest%" /s /i /q
:: Kills all UWP apps
taskkill /F /IM ApplicationFrameHost.exe >nul 2>&1
:: Kills Gaming Service, it likes to get in the way
powershell -Command "Stop-Service -Name GamingServices"
taskkill /f /im gamingservices.exe >nul 2>&1
:: Register AppxManifest.xml
echo Registering AppxManifest.xml...
powershell -Command "Add-AppxPackage -Register '%userprofile%\Documents\WSA\AppxManifest.xml'"
taskkill /F /IM ApplicationFrameHost.exe >nul 2>&1
taskkill /f /im gamingservices.exe >nul 2>&1
:: Install dependencies
echo Installing dependencies...
for %%f in ("%~dp0*.appx") do (
    echo Installing %%f...
    powershell -Command "Add-AppxPackage '%%~ff'"
)
taskkill /F /IM ApplicationFrameHost.exe >nul 2>&1
:: Done!
echo Windows Subsystem for Android has been installed!
pause
