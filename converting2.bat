ECHO Movie Dir, please?
SET /p movdir=

IF EXIST "%movdir%" (
MKDIR "%movdir%\converted"
)

FOR /r "%movdir%" %%a in ("*.mp4,*.mkv",*.avi) do (
ffmpeg -i %%a -c:v libx264 -preset slow -crf 22 -c:a copy "%movdir%\converted\%%~na.mkv"
)

) ELSE (
ECHO That Directory doesn't exist, try again 
GOTO Start
)

RD /s /q "%movdir%\converted"
ECHO All Done, bye :)