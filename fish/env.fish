#!/usr/bin/env fish

#Language
set -g -x LANG "en_US.UTF-8"
set -g -x LANGUAGE "en_US.UTF-8"
set -g -x LC_CTYPE "en_US.UTF-8"
set -g -x LC_ALL "en_US.UTF-8"

# Disable Accesibility warnings
set -g -x NO_AT_BRIDGE 1

# Go related envs
set -g -x GOPATH $HOME/programming/go
fish_add_path -a -P $GOPATH/bin

# Ruby
fish_add_path -a -P (ruby -e 'print Gem.user_dir')/bin

#Rust
fish_add_path -a -P $HOME/.cargo/bin
set -g -x CARGO_TARGET_DIR /mnt/storage/cargo-target

#Node
fish_add_path -a -P $HOME/.node/bin

#Python
fish_add_path -a -P $HOME/.local/bin

#Java
set -g -x JAVA_HOME /usr/lib/jvm/default

#.NET
set -g -x DOTNET_CLI_TELEMETRY_OPTOUT 1

#Git
set -g -x GIT_SSH_COMMAND 'ssh -i ~/.ssh/github_id_rsa'

# Sqlite
set -g -x SQLITE_HISTORY $HOME/.cache/sqlite_history

#weechat
set -g -x WEECHAT_HOME $HOME/.config/weechat

# Do we have any access keys or secrets?
if test -f $HOME/.config/fish/env_local.fish
    source $HOME/.config/fish/env_local.fish
end
