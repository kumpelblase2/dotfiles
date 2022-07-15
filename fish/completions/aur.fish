set -l aur_commands build chroot fetch pkglist repo search sync vercmp build--pkglist depends graph query repo-filter srcver sync--ninja view gc remove
complete -f -c aur -n "not __fish_seen_subcommand_from $aur_commands" -a build -d 'build packages to a local repository'
complete -f -c aur -n "not __fish_seen_subcommand_from $aur_commands" -a sync -d 'download and build AUR packages automatically'
