set nocompatible              " be iMproved, required
set number
set laststatus=2
set hlsearch
set ruler
set nobackup
set cursorline

filetype off                  " required
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'sickill/vim-monokai'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
syntax on

colorscheme monokai
