@ECHO 

for %%A IN (*.mp4,*.mkv,*.avi) DO ffmpeg -i %%A -c:v libx264 -preset slow -crf 22 -c:a copy "converted\%%~NA.x264.mkv"