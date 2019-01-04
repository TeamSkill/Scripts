@echo off

WHERE ffmpeg

IF %ERRORLEVEL% NEQ 0 ECHO ffmpeg wasn't found please install ffmpeg to use this script & GOTO exit

IF %1x == x ECHO Parameter not set & GOTO exit

echo Starting ffmpeg
ffmpeg -i %1 -map 0:1 audio_1.aac
ffmpeg -i %1 -map 0:2 audio_2.aac

echo Done!

:exit
pause

