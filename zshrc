export DOTFILES=$HOME/.dotfiles


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

export NVM_DIR="/home/tim/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
