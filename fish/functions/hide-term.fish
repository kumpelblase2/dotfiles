function hide-term --description 'Hides the terminal while the command is being executed'
    set node_id (bspc query -N -n focused)
    bspc node $node_id -g hidden=on
    eval $argv[1..-1]
    bspc node $node_id -g hidden=off
end
