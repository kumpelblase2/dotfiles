function tor-browser --description 'Runs tor-browser with proper GDK scaling'
set -x GDK_DPI_SCALE 1.5
command tor-browser $argv
end
