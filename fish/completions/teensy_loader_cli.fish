complete -c teensy_loader_cli -s w -d ': Wait for device to appear'
complete -c teensy_loader_cli -s r -d ': Use hard reboot if device not online'
complete -c teensy_loader_cli -s s -d ': Use soft reboot if device not online (Teensy 3.x & 4.x)'
complete -c teensy_loader_cli -s n -d ': No reboot after programming'
complete -c teensy_loader_cli -s b -d ': Boot only, do not program'
complete -c teensy_loader_cli -s v -d ': Verbose output'
complete -c teensy_loader_cli -l mcu -r --description 'The given type of chip'
complete -c teensy_loader_cli -l list-mcus -d 'List all available mcus'
complete -c teensy_loader_cli -a -F --description "The file to flash"
