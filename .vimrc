scriptencoding utf-8

" use Vim settings, rather than Vi settings
set nocompatible

"---------------------------------------------------------------------------
" NeoBundle
"
set runtimepath+=~/.vim/dein/repos/github.com/Shougo/dein.vim

call dein#begin(expand('~/.vim/dein'))

" NERD Tree --  A tree explorer plugin for vim.
call dein#add('scrooloose/nerdtree')

" Tabular -- Vim script for text filtering and alignment
call dein#add('godlygeek/tabular')

" vim-slim -- Slim support for vim
call dein#add('slim-template/vim-slim')

" vim-coffee-script -- CoffeeScript support for vim
call dein#add('kchmck/vim-coffee-script')

" lightline.vim -- A light and configurable statusline/tabline for Vim
call dein#add('itchyny/lightline.vim')

" vim-hybrid -- A dark color scheme for Vim & gVim
call dein#add('w0ng/vim-hybrid')

" vim-go -- Go development plugin for Vim
call dein#add('fatih/vim-go')

call dein#end()

"---------------------------------------------------------------------------
" Search settings

set noignorecase
set nosmartcase
set wrapscan
set incsearch
set hlsearch

" remove highlighting of search by <Esc><Esc>
nnoremap <silent><Esc><Esc> :<C-u>set nohlsearch!<CR>
nnoremap / :<C-u>set hlsearch<Return>/
nnoremap ? :<C-u>set hlsearch<Return>?
nnoremap * :<C-u>set hlsearch<Return>*
nnoremap # :<C-u>set hlsearch<Return>#


"---------------------------------------------------------------------------
" File settings

" set line-break and charset
set fileformat=unix
set fileformats=unix
set fileencoding=utf-8
set fileencodings=utf-8
set encoding=utf-8
set ambiwidth=double

" make a backup before overwriting a file
set backup

" crypt method as blowfish
set cryptmethod=blowfish

"---------------------------------------------------------------------------
" Edit settings

" tab and indent
set tabstop=8
set shiftwidth=2
set softtabstop=2
set shiftwidth=2
set expandtab
set autoindent
set smartindent

" Deletes a lot in insert mode
inoremap <C-U> <C-G>u<C-U>

" Search
" use or not enhanced command-line
" compatible japanese character during insert-mode
set formatoptions+=mM

" Enable backspace in insert mode
set backspace=indent,eol,start

"---------------------------------------------------------------------------
" View and UI settings

" show line number
set number
" show ruler
set ruler
" status bar configuration (see also: he laststatus)
set laststatus=2
" height of command line
set cmdheight=1
" show command in status bar
set showcmd
" keep 50 lines of command line history
set history=50
" set title of terminals
set title
" Powerfull menu
set wildmenu
" show matched beggining or ending of scope
set showmatch
source $VIMRUNTIME/macros/matchit.vim

" Enable syntax highlighting
syntax on

" Colorscheme
set background=dark
colorscheme hybrid
hi Normal ctermbg=none
highlight NonText ctermbg=none

