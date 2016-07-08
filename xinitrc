setxkbmap de
export LANG=de_DE.UTF-8
export BROWSER=chromium
xset -b
xrdb -merge ~/.Xresources
numlockx &
unclutter &
exec awesome
