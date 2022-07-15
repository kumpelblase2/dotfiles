function mpv-hd --wraps='mpv' --description 'alias mpv-hd mpv --video-sync=display-resample --display-fps=60 --profile=opengl-hq --interpolation'
  mpv --video-sync=display-resample --display-fps=60 --profile=opengl-hq --interpolation $argv; 
end
