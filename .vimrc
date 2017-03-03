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

" vim-clang -- Clang completion plugin for vim
call dein#add('justmao945/vim-clang')

" vim-javacomplete2 - Updated javacomplete plugin for vim.
call dein#add('artur-shaik/vim-javacomplete2')

" vim-javacomplete2 - Updated javacomplete plugin for vim.
call dein#add('artur-shaik/vim-javacomplete2')

" vim-erlang/vim-erlang-runtime - Erlang indentation and syntax for Vim
call dein#add('vim-erlang/vim-erlang-runtime')

" vim-erlang/vim-erlang-omnicomplete - Erlang omnicomplete plugin for Vim
call dein#add('vim-erlang/vim-erlang-omnicomplete')

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

"---------------------------------------------------------------------------
" Go and vim-go

let g:go_fmt_command = "goimports"

let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_fields = 1
let g:go_highlight_types = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1

let g:syntastic_go_checkers = ['golint', 'govet', 'errcheck']
let g:syntastic_mode_map = { 'mode': 'active', 'passive_filetypes': ['go'] }

au FileType go nmap <Leader>1 <Plug>(go-build)
au FileType go nmap <Leader>2 <Plug>(go-run)
au FileType go nmap <Leader>3 <Plug>(go-test)
au FileType go nmap <Leader>e <Plug>(go-rename)

au FileType go setlocal omnifunc=go#complete#Complete

au FileType go set shiftwidth=8
au FileType go set softtabstop=8
au FileType go set tabstop=8
au FileType go set noexpandtab

au FileType go :highlight goErr cterm=bold ctermfg=214
au FileType go :match goErr /\<err\>/

let g:go_list_type = "quickfix"

"---------------------------------------------------------------------------
" C

au FileType c,cpp set shiftwidth=8
au FileType c,cpp set softtabstop=8
au FileType c,cpp set tabstop=8
au FileType c,cpp set noexpandtab

"---------------------------------------------------------------------------
" Java

autocmd FileType java setlocal omnifunc=javacomplete#Complete
au FileType java set shiftwidth=4
au FileType java set softtabstop=4

filetype plugin indent on
