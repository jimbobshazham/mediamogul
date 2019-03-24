@ECHO 

for %%A IN (*.mp4,*.mkv,*.avi) DO ffmpeg -i %%A -c:v libvpx-vp9 -b:v 0 -crf 30 -pass 1 -an -f webm NUL && ^
ffmpeg -i jellyfish-20-mbps-hd-h264.mkv -c:v libvpx-vp9 -b:v 0 -crf 30 -pass 2 -c:a libopus "converted\%%~NA.vp9.webm"