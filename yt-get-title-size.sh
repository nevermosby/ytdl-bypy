#!/bin/sh

targetUrl=$1

video_title=$(youtube-dl -e "${targetUrl}") && echo "title:${video_title}"
video_size=$(youtube-dl -g "${targetUrl}" | xargs curl -sI | grep Content-Length | awk '{print $2/1024/1024"MB"}') && echo "size:${video_size}"

#echo "title:${video_title}"
#echo "size:${video_size}"

