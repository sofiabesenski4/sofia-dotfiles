
" To install new plugs, add their repo here, and call :PlugInstall
" :PlugInstall will read this plug list once, when it reads the config, on boot,
" so we need to restart vim before running :PlugInstall

call plug#begin()
	Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
	Plug 'junegunn/fzf.vim'
	Plug 'lifepillar/vim-solarized8'
	Plug 'tpope/vim-sensible'
call plug#end()

" Tells vim to use truecolors
set termguicolors

syntax on
" this colour scheme is installed from lifepillar
" colorscheme solarized8
" This is an option for the color scheme
" set background=light
" set highlight-search
set hlsearch
" search as you type
set incsearch

set noswapfile

" delete before the colon : this should stay 
inoremap jk <ESC> 

nnoremap <C-p> :Files <CR> 

set backspace=indent,eol,start

set tabstop=2
set shiftwidth=2
set expandtab

" Strip trailing whitespace
autocmd BufWritePre *.rb :%s/\s\+$//e

function! SetSystemClipboard()
  if !has("clipboard")
    echo "Note: This version of Vim doesn't have system clipboard access"
    return
  endif

  if has('Darwin')
    set clipboard+=unnamed,unnamedplus
  else
    set clipboard=unnamed
  endif
endfunction

call SetSystemClipboard()

set number
