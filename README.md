
# below path the /media files should be mp4 and and same file name must go in the mediamtx.yml file path . open file and check mp4 file
# run below command in CMD and not on GITBASH
docker run --rm -it -p 8554:8554 -v "C:\Users\nimes\Desktop\tbl\repo\mediamtx.yml:/etc/mediamtx/mediamtx.yml" -v "C:\Users\nimes\Desktop\tbl\repo\VideoAnalytical\rtcv2\moduler:/media"  -w /media mediamtx-ffmpeg


