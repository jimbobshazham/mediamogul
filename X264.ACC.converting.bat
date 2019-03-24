@ECHO 

for %%A IN (*.mp4,*.mkv) DO ffmpeg -i %%A -c:v libx264 -preset slow -crf 22 -c:a aac -b:a 160k "converted\%%~NA.x264.mkv"