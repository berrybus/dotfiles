set nocompatible

filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

"Make vim not look like shit"
Plugin 'altercation/vim-colors-solarized'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

"plugins m8"
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'vim-syntastic/syntastic'
Plugin 'ervandew/supertab'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'jez/vim-c0'
Plugin 'jez/vim-better-sml'

call vundle#end()

filetype plugin indent on

"General settings"
set backspace=indent,eol,start
set ruler
set number
set showcmd
set incsearch
set hlsearch
set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2
set smarttab
syntax on
set mouse=a

hi clear SignColumn

syntax enable
set background=dark
colorscheme solarized
set term=xterm
set t_Co=16

set laststatus=2
let mapleader = ","
map <leader><Right> :bn<cr>
map <leader><Left> :bp<cr>
map <leader>d :bd<cr>

let g:airline_detect_paste = 1
let g:airline#extensions#tabline#enabled = 1

let g:airline_theme='bubblegum'
let g:airline_powerline_fonts = 1

nmap <silent> <leader>t :NERDTreeToggle<CR>
nmap <silent> <leader>l :IndentGuidesToggle<CR>

let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
let g:nerdtree_tabs_open_on_console_startup = 0
let g:NERDTreeWinSize = 20
let NERDTreeQuitOnOpen = 1

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_enable_highlighting = 0
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0

hi MatchParen cterm=bold ctermbg=none ctermfg=magenta

augroup mySyntastic
  au!
  au FileType tex let b:syntastic_mode = "passive"
augroup END

let g:airline#extensions#hunks#non_zero_only = 1


