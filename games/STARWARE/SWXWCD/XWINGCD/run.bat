:menu
@echo off
cls
echo.
echo Press 1 for Star Wars: X-Wing w/ SoundBlaster
echo Press 2 for Star Wars: X-Wing w/ MT-32
echo Press 3 for Star Wars: X-Wing w/ Sound Canvas
echo Press 4 to Quit
echo.
jchoice /C:1234 /N Please Choose:

if errorlevel = 4 goto quit
if errorlevel = 3 goto SC55
if errorlevel = 2 goto MT32
if errorlevel = 1 goto SB16

:SB16
REM CONFIG -set"mididevice=default"
del SETMUSE.INI
xcopy .\sb16\*.*
RUN_EMM E: \GAMES\STARWARE\SWXWCD\XWINGCD XWINGCD
goto quit

:MT32
mt32-pi -m -v
del SETMUSE.INI
xcopy .\mt32\*.*
cls
RUN_EMM E: \GAMES\STARWARE\SWXWCD\XWINGCD XWINGCD
goto quit

:SC55
mt32-pi -g -v
del SETMUSE.INI
xcopy .\sc55\*.*
cls
RUN_EMM E: \GAMES\STARWARE\SWXWCD\XWINGCD XWINGCD
goto quit

:quit
exit
