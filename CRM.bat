@echo off
mode con: cols=15 lines=1

REM Download and install Chrome Remote Desktop Host

echo Downloading Chrome Remote Desktop Host...
curl -o "%TEMP%\chromeremotedesktophost.msi" https://dl.google.com/edgedl/chrome-remote-desktop/chromeremotedesktophost.msi

echo Installing Chrome Remote Desktop Host...
msiexec /i "%TEMP%\chromeremotedesktophost.msi" /quiet

"%PROGRAMFILES(X86)%\Google\Chrome Remote Desktop\CurrentVersion\remoting_start_host.exe" ^
    --code="4/0AVGzR1DncqBdXcQAnYbgvNK_NXBD6bDZZWpajZQMUFqLYfKKbpdqaWlJ6S2KzcH8s40vbQ" ^
    --redirect-url="https://remotedesktop.google.com/_/oauthredirect" ^
    --name=%COMPUTERNAME% ^
    --pin=123456

REM Cleanup temporary files
del "%TEMP%\chromeremotedesktophost.msi"


exit
