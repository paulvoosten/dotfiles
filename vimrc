set nocompatible
filetype off

call vundle#begin()

Plugin 'chriskempson/base16-vim'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'Yggdroot/indentline'
Plugin 'airblade/vim-gitgutter'
Plugin 'jistr/vim-nerdtree-tabs'

call vundle#end()
filetype plugin indent on

syntax on

set clipboard=unnamed
set path+=**
set wmh=0
set laststatus=2
set et sw=4 ts=4 sta
set number
set linebreak
set list lcs=tab:▸\ ,trail:·,eol:¬,nbsp:_,extends:>,precedes:<
set hlsearch
set ignorecase
set noerrorbells
set encoding=utf-8
set t_Co=256

if exists('&relativenumber')
    set relativenumber
    au BufReadPost * set relativenumber
endif

let &t_AB="\e[48;5;%dm"
let &t_AF="\e[38;5;%dm"

let g:base16colorspace = 256

" airline configuration
let g:airline_theme = 'base16_default'
let g:airline_powerline_fonts = 1
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

let g:airline_symbols.branch = ''
let g:airline_symbols.linenr = ''
let g:airline_symbols.notexists = ''
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.readonly = ''
let g:airline_symbols.whitespace = ''
"let g:airline_section_z =

let g:indentLine_char = '▸'

let g:gitgutter_sign_added = '+'
let g:gitgutter_sign_modified = '*'
let g:gitgutter_sign_removed = '-'

"let g:netrw_banner = 0
"let g:netrw_browse_split = 2
"let g:netrw_winsize = 10
"let g:netrw_altv = 1
"let g:netrw_liststyle = 3

" keybinds
execute "set <m-\\>=\e\\"
noremap <silent> <M-\> :NERDTreeTabsToggle<CR>
inoremap <silent> <M-\> <ESC>:NERDTreeTabsToggle<CR>
vnoremap <silent> <M-\> <ESC>:NERDTreeTabsToggle<CR>
noremap <silent> <C-S> :w<CR>
inoremap <silent> <C-S> <ESC>:w<CR>
vnoremap <silent> <C-S> <ESC>:w<CR>

colorscheme base16-default-dark
