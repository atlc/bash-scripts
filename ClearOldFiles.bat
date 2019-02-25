REM 	This deletes files from the desktop older than 90 days and from Downloads older than 10 days.
ForFiles /p "C:\Users\%USERNAME%\Desktop" /s /d -90 /c "cmd /c del /F /Q @file"
ForFiles /p "C:\Users\%USERNAME%\Downloads" /s /d -10 /c "cmd /c del /F /Q @file"
