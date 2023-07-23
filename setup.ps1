New-Item -Path 'c:\kits\' -Name 'apps' -ItemType 'directory'
cd "c:\kits\apps"
#Invoke-WebRequest -Uri 'https://dl.google.com/tag/s/appguid%3D%7B8A69D345-D564-463C-AFF1-A69D9E530F96%7D%26iid%3D%7B6D602DB0-CB43-72D0-13B2-5B0D627E3AA3%7D%26lang%3Den%26browser%3D5%26usagestats%3D1%26appname%3DGoogle%2520Chrome%26needsadmin%3Dprefers%26ap%3Dx64-stable-statsdef_1%26brand%3DUEAD%26installdataindex%3Dempty/update2/installers/ChromeSetup.exe' -OutFile c:\kits\apps\chrome.exe
.\chrome.exe
#Invoke-WebRequest -Uri 'https://cdn.zoom.us/prod/5.14.10.17221/x64/ZoomInstallerFull.msi' -OutFile c:\kits\apps\zoom.msi
.\zoom.msi /qn
sleep 60
.\Greenshot.exe /vERYSILENT /NORESTART
#Start-Process -FilePath "C:\Windows\System32\sysprep\sysprep.exe" -ArgumentList "/oobe", "/generalize", "/shutdown" -Verb runAs
#msiexec /i "zoom.msi" /qn
#cmd -verb runas
#cd C:\Windows\System32\sysprep
#sysprep /oobe /generalize /reboot
