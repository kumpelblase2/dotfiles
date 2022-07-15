function downsample-video --description "" --argument _video
  if test (string length "$_video") -eq 0
    echo "Please pass in a file"
    exit 1
  end

  set file_name (basename $_video)
  set name_without_ext (string split -r -m1 "." "$file_name")[1]
  set output_filename "$name_without_ext-downsampled.mp4"
  ffmpeg -vsync passthrough -i "$_video" -c:a copy -c:v h264_nvenc -b:v 2M "$output_filename"
end
