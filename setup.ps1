New-Item -Path 'c:\kits\' -Name 'apps' -ItemType 'directory'
cd "c:\kits\apps"
Invoke-WebRequest -Uri 'https://dl.google.com/tag/s/appguid%3D%7B8A69D345-D564-463C-AFF1-A69D9E530F96%7D%26iid%3D%7B6D602DB0-CB43-72D0-13B2-5B0D627E3AA3%7D%26lang%3Den%26browser%3D5%26usagestats%3D1%26appname%3DGoogle%2520Chrome%26needsadmin%3Dprefers%26ap%3Dx64-stable-statsdef_1%26brand%3DUEAD%26installdataindex%3Dempty/update2/installers/ChromeSetup.exe' -OutFile c:\kits\apps\chrome.exe
.\chrome.exe
Invoke-WebRequest -Uri 'https://avdessenstor2307.blob.core.windows.net/avdessencontainerbyraju/Zoom.msi' -OutFile c:\kits\apps\zoom.msi
.\zoom.msi /qn
Invoke-WebRequest -Uri 'https://avdessenstor2307.blob.core.windows.net/avdessencontainerbyraju/Greenshot.exe' -OutFile c:\kits\apps\Greenshot.exe
sleep 60
.\Greenshot.exe /VERYSILENT /NORESTART
Invoke-WebRequest -Uri 'https://avdessenstor2307.blob.core.windows.net/avdessencontainerbyraju/Webex.msi' -OutFile c:\kits\apps\Webex.msi
sleep 60
.\Webex.msi /qn
#Start-Process -FilePath "C:\Windows\System32\sysprep\sysprep.exe" -ArgumentList "/oobe", "/generalize", "/shutdown" -Verb runAs
#msiexec /i "zoom.msi" /qn
#cmd -verb runas
#cd C:\Windows\System32\sysprep
#sysprep /oobe /generalize /reboot
