set -U -x AUR_PAGER ranger
set -U -x DOTFILES $HOME/.dotfiles
set -U -x EDITOR nvim
set -U -x VISUAL $EDITOR
set -U -x BROWSER firefox-developer-edition

set -U -x XDG_CONFIG_HOME $HOME/.config
set -U -x XDG_MUSIC_DIR $HOME/music
set -U -x XDG_DOWNLOAD_DIR $HOME/downloads
set -U -x XDG_DOCUMENTS_DIR $HOME/files
set -U -x XDG_VIDEOS_DIR $HOME/videos
set -U -x XDG_PICTURES_DIR $HOME/pictures

abbr -a extract aunpack
abbr -a ll 'ls -l'
abbr -a sc 'systemctl'
abbr -a open 'xdg-open'
abbr -a unmount umount

set -U fish_greeting

fish_add_path -a $HOME/bin $HOME/bin_local

set -U __done_exclude "mpv|vopono"
set -U __done_min_cmd_duration 40000

fish_config theme choose Nord
