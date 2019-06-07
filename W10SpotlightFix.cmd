:: Windows 10 Spotlight Fix
:: Reset Windows Spotlight
DEL /F /S /Q /A "%USERPROFILE%/AppData\Local\Packages\Microsoft.Windows.ContentDeliveryManager_cw5n1h2txyewy\LocalState\Assets"
DEL /F /S /Q /A "%USERPROFILE%/AppData\Local\Packages\Microsoft.Windows.ContentDeliveryManager_cw5n1h2txyewy\Settings"

:: Re-register Windows Spotlight
PowerShell -ExecutionPolicy Unrestricted -Command "& {$manifest = (Get-AppxPackage *ContentDeliveryManager*).InstallLocation + '\AppxManifest.xml' ; Add-AppxPackage -DisableDevelopmentMode -Register $manifest}"


REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SoftLandingEnabled" /d 1 /t REG_DWORD /f

REG ADD "HKLM\softwareMicrosoft\Windows\CurrentVersion\Policies\System" /v "EnableLUA" /d 1 /t REG_DWORD /f

REG DELETE "HKLM\SOFTWARE\Policies\Microsoft\Windows\DataCollection" /v "DisableWindowsConsumerFeatures" /f
:: Before you blow away this key, make sure there is nothing else in it. The exact value to remove is: DisableWindowsConsumerFeatures if you are paranoid. The below key does not exist normally, it has to be added  manually or by GP.
REG DELETE "HKLM\SOFTWARE\Policies\Microsoft\Windows\CloudContent" /f


:: Per user settings - Applied to all future users the log in for the first time IF you made the change for all users.
REG LOAD HKU\DefaultUser %SystemDrive%\Users\Default\NTUSER.DAT

REG ADD "HKU\DefaultUser\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SoftLandingEnabled" /d 1 /t REG_DWORD /f

REG UNLOAD HKU\DefaultUser
