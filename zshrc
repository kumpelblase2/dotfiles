export DOTFILES=$HOME/.dotfiles
DISABLE_UPDATE_PROMPT=true
DISABLE_AUTO_UPDATE=true

. "${DOTFILES}/zgen/zgen.zsh"

if ! zgen saved; then
	echo "Creating ZGEN files"

	zgen oh-my-zsh
	zgen load zsh-users/zsh-syntax-highlighting
	zgen load rimraf/k
	zgen oh-my-zsh themes/norm
	zgen oh-my-zsh plugins/safe-paste
	zgen load felixr/docker-zsh-completion

	zgen save
fi

. "${DOTFILES}/zshsettings"
. "${DOTFILES}/environment"
. "${DOTFILES}/alias"

