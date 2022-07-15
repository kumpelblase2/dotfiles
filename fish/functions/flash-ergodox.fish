function flash-ergodox --wraps='teensy-loader-cli -w --mcu=atmega32u4' --description 'alias flash-ergodox teensy-loader-cli -w --mcu=atmega32u4'
  teensy-loader-cli -w --mcu=atmega32u4 $argv; 
end
