export DOTFILES=$HOME/.dotfiles


. "${DOTFILES}/zgen/zgen.zsh"

if ! zgen saved; then
	echo "Creating ZGEN files"

	zgen oh-my-zsh
	zgen load zsh-users/zsh-syntax-highlighting
	zgen load rimraf/k
	zgen oh-my-zsh plugins/command-not-found
	zgen oh-my-zsh themes/norm

	zgen save
fi

. "${DOTFILES}/zshsettings"
. "${DOTFILES}/environment"
. "${DOTFILES}/alias"
