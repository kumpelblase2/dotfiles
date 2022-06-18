export DOTFILES=$HOME/.dotfiles
DISABLE_UPDATE_PROMPT=true
DISABLE_AUTO_UPDATE=true

. "${DOTFILES}/zshsettings"

source /usr/share/zsh/scripts/zplug/init.zsh

zplug "zsh-users/zsh-history-substring-search"
zplug "zsh-users/zsh-syntax-highlighting", defer:2

if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi

zplug load

. "${DOTFILES}/zshtheme"
. "${DOTFILES}/environment"
. "${DOTFILES}/alias"
