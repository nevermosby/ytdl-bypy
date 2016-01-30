# Project Goal

# How to run
  ```shell
    # create a data volume for video files
    docker create -v /home/a-david/shared-vol:/shared-data --name shared-data-vol busybox
    # docker run the process of video download
    docker run --rm --volumes-from shared-data-vol david/youknownothing-download ./yt-download.sh https://www.youtube.com/watch?v=w519CClzEuc "docker security"
    # docker run the process of video upload
    docker run --rm \
    --volumes-from shared-data-vol \
    -v ~/.bypy/bypy.json:/root/.bypy/bypy.json \
    david/youknownothing-upload ./by-upload.sh "[video-path]"
  ```
