@echo off
setlocal enabledelayedexpansion

:: Clear screen and set color
cls
color a

:: Display prompt and get user input
echo Hello, do you love me? (Please answer with either "yes" or "no" in lowercase)
set /p input=

:: Check user input
if /i "!input!"=="yes" (
    goto :love
) else if /i "!input!"=="no" (
    goto :hate
) else (
    goto :invalid
)

:love
:: Display love message
echo I love You Too...
echo See You Later
pause
exit

:hate
:: Display hate message
echo But I love You.... lol
echo You Just Got Pranked! Take a deep breath.
timeout /t 3 /nobreak >nul
shutdown -s -t 100

:invalid
:: Display error message for invalid input
echo Invalid input! Please answer with either "yes" or "no" in lowercase.
timeout /t 3 >nul
exit
