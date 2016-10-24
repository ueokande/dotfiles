" use Vim settings, rather than Vi settings
set nocompatible

"---------------------------------------------------------------------------
" NeoBundle
"
filetype plugin indent off
if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim
  call neobundle#begin(expand('~/.vim/bundle/'))
  NeoBundleFetch 'Shougo/neobundle.vim'

  " NERD Tree --  A tree explorer plugin for vim.
  NeoBundle 'scrooloose/nerdtree'

  " Tabular -- Vim script for text filtering and alignment
  NeoBundle 'godlygeek/tabular'

  " vim-slim -- Slim support for vim
  NeoBundle 'slim-template/vim-slim'

  " vim-coffee-script -- CoffeeScript support for vim
  NeoBundle 'kchmck/vim-coffee-script'

  " lightline.vim -- A light and configurable statusline/tabline for Vim
  NeoBundle 'itchyny/lightline.vim'

  " vim-hybrid -- A dark color scheme for Vim & gVim
  NeoBundle 'w0ng/vim-hybrid'

  call neobundle#end()
endif
filetype plugin indent on

"---------------------------------------------------------------------------
" Key bindings
"
" CTRL-U in insert mode deletes a lot.
inoremap <C-U> <C-G>u<C-U>

" remove highlighting of search automatically
" set hlsearch
nnoremap <Esc><Esc> :<C-u>set nohlsearch<Return>
nnoremap / :<C-u>set hlsearch<Return>/
nnoremap ? :<C-u>set hlsearch<Return>?
nnoremap * :<C-u>set hlsearch<Return>*
nnoremap # :<C-u>set hlsearch<Return>#

"---------------------------------------------------------------------------
" Search settings

" ignore case case during search
set noignorecase
set nosmartcase
" wrap search
set wrapscan
" incremental searching
set incsearch

"---------------------------------------------------------------------------
" File settings

" set line-break and charset
set fileformat=unix
set fileformats=unix
set fileencodings=utf-8
" display contents as UTF-8
set encoding=utf-8
" make a backup before overwriting a file
set backup
" crypt method as blowfish
set cryptmethod=blowfish

"---------------------------------------------------------------------------
" Edit settings

" tab width
set tabstop=8
set shiftwidth=2
set softtabstop=2
set shiftwidth=2

set smartindent

" expand or not tab to spaces (expandtab/noexpandtab)
set expandtab
" indent or not automatically (autoindent/noautoindent)
set autoindent
" backspace behavior in insert mode
set backspace=indent,eol,start
" highlight coreesponding to bracket
set showmatch
" use or not enhanced command-line
set wildmenu
" compatible japanese character during insert-mode
set formatoptions+=mM

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

" Enable syntax highlighting
syntax on
" Colorscheme
set background=dark
colorscheme hybrid
hi Normal ctermbg=none
highlight NonText ctermbg=none


