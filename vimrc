if has('vim_starting')
    runtime! bundle/pathogen/autoload/pathogen.vim
    silent! execute pathogen#infect()
endif

syntax on
filetype plugin indent on

set nocompatible
set sessionoptions-=options
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
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

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
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
"let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
"let g:airline_right_alt_sep = ''

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

" indentLine configuration
let g:indentLine_char = '▸'

" gitgutter configuration
let g:gitgutter_sign_added = '+'
let g:gitgutter_sign_modified = '*'
let g:gitgutter_sign_removed = '-'

" syntastic configuration
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
" netrw configuration
"let g:netrw_banner = 0
"let g:netrw_browse_split = 2
"let g:netrw_winsize = 10
"let g:netrw_altv = 1
"let g:netrw_liststyle = 3

" keybinds
if !has('nvim')
    execute "set <M-\\>=\e\\"
endif

nnoremap <silent> <M-\> :NERDTreeTabsToggle<CR>
inoremap <silent> <M-\> <ESC>:NERDTreeTabsToggle<CR>
vnoremap <silent> <M-\> <ESC>:NERDTreeTabsToggle<CR>
nnoremap <silent> <C-s> :w<CR>
inoremap <silent> <C-s> <ESC>:w<CR>
vnoremap <silent> <C-s> <ESC>:w<CR>

colorscheme base16-default-dark
