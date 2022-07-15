export DOTFILES=$HOME/.dotfiles
DISABLE_UPDATE_PROMPT=true
DISABLE_AUTO_UPDATE=true

. "${DOTFILES}/zshsettings"
. "${DOTFILES}/environment"

if [[ $(ps --no-header --pid=$PPID --format=comm) != "fish" && -z ${ZSH_EXECUTION_STRING} ]]
then
    exec fish
fi
