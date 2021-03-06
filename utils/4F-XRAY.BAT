ECHO OFF
IF "%2" == "/N" GOTO ACTION
IF "%2" == "/n" GOTO ACTION
CLS
ECHO .
ECHO      Batch file instructions:
ECHO  浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様融
ECHO  �  To avoid this message, use this syntax:  XRAY.BTM filename.ext /N   �
ECHO  � (To configure 4FILES to use this program, type Alt-F10 from 4FILES.) �
ECHO  把陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳陳超
ECHO  � This batch file sends the given file name to the appropriate archive �
ECHO  � managing utility (AR, LR, ZR, or ZOR) depending on the extension of  �
ECHO  � the archive (ARJ, LZH, ZIP and ZOO respectively).  These utilities   �
ECHO  � may be found in XRAYxxx.ZIP on BBSs; they can list, browse and unar- �
ECHO  � chived files.  Other archive types (ARC, PAK, DWC, LBR and self-     �
ECHO  � extracting archives) are sent to FV.COM, which can list, but not     �
ECHO  � browse or unarchive the files in an archive.                         �
ECHO  �                                                                      �
ECHO  � FOR FASTER EXECUTION, you will want to modify the program entries    �
ECHO  � below to include the complete drive:pathspec, to locate each program �
ECHO  � precisely without relying on a PATH search by DOS.                   �
ECHO  �                                                                      �
ECHO  � ALSO, if you are NOT using Buerg's LIST or the 4DOS LIST, erase the  �
ECHO  � "REM" preceding "pause" on the second to last line (to prevent the   �
ECHO  � archive data from scrolling off screen).                             �
ECHO  �                                                                      �
ECHO  藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様夕
ECHO .
PAUSE

:ACTION
IF "%@EXT[%1]"=="ZIP" GOTO DO-ZRAY
IF "%@EXT[%1]"=="LZH" GOTO DO-LRAY
IF "%@EXT[%1]"=="ARJ" GOTO DO-ARAY
IF "%@EXT[%1]"=="ZOO" GOTO DO-Z00RAY
IF "%@EXT[%1]"=="ARC" GOTO DO-FV
IF "%@EXT[%1]"=="PAK" GOTO DO-FV
IF "%@EXT[%1]"=="DWC" GOTO DO-FV
IF "%@EXT[%1]"=="LBR" GOTO DO-FV
IF "%@EXT[%1]"=="EXE" GOTO DO-FV
GOTO ERROR

:DO-ZRAY
ZR.COM %1

GOTO END

:DO-LRAY
LR.COM %1

GOTO END

:DO-ARAY
AR.COM %1

GOTO END

:DO-ZOORAY
ZOR.COM %1

GOTO END

:DO-FV
FV.COM %1 /p /c
ECHO .
PAUSE

GOTO END

:ERROR

REM PAUSE

:END