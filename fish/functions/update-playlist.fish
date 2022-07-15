function update-playlist --description 'Replaces the current mpd playlist with recently added songs'
mpc clear; and find -L ~/music -name "*.mp3" -mtime -90 -printf "%P\n" | mpc add
end
