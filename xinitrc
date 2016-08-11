setxkbmap de
setxkbmap -option compose:paus
export LANG=en_US.UTF-8
export BROWSER=chromium
xset -b
xrdb -merge ~/.Xresources
numlockx &
unclutter &
exec awesome
