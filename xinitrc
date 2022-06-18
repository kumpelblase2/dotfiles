# Run pre-configured xinitrc programs, such as systemd setup
if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

# Set compose key to right alt (altgr) for composing umlauts, etc.
setxkbmap -layout eu -option 'ctrl:swapcaps'

# Setup HiDPI scaling properly. DP is 4k, DVI is 1440p and HDMI is 1080p, though HDMI is unplugged most of the time
xrandr --output DP-4 --primary --auto --output DVI-D-0 --scale 1.5x1.5 --right-of DP-4
# --output HDMI-0 --scale 2x2 --pos 7680x0
# Disable bell
xset -b

# Execute BSPWM
exec bspwm
