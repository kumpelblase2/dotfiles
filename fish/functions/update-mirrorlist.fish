function update-mirrorlist --description 'Update the local mirrorlist according to speed and latency'
  command sudo reflector --sort rate --save /etc/pacman.d/mirrorlist -c "Germany" -f 5 -p https -x "mirror\.checkdomain\.de";
end
