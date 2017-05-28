setxkbmap -option compose:ralt
export LANG=en_US.UTF-8
export BROWSER=chromium
xrandr --output DP-1 --primary --auto --output DVI-I-1 --scale 1.5x1.5 --right-of DP-1 --output HDMI-0 --scale 2x2 --pos 7680x0
xset -b
xrdb -merge ~/.Xresources
numlockx &
pgrep redshift &> /dev/null || redshift &> /dev/null &
exec awesome
