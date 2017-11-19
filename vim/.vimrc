if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/bundle')
    Plug 'neomake/neomake'
    Plug 'tpope/vim-fugitive'
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'chriskempson/base16-vim'
    Plug 'shawncplus/phpcomplete.vim'
    Plug 'rust-lang/rust.vim'
    Plug 'airblade/vim-gitgutter'
    Plug 'scrooloose/nerdtree'
    Plug 'ctrlpvim/ctrlp.vim'
    Plug 'ryanoasis/vim-devicons'
call plug#end()

call neomake#configure#automake('nrw', 500)

set nocompatible
set laststatus=1
"set showtabline=0
set hidden
set expandtab
set shiftwidth=4
set tabstop=4
set smarttab
set number
set relativenumber
set linebreak
set breakindent
set list
set listchars=tab:▸\ ,trail:·,eol:¬,nbsp:_,extends:>,precedes:<
set hlsearch
set ignorecase
set noerrorbells
set encoding=utf-8

let mapleader = ','
let NERDTreeMinimalUI = 1

" airline configuration
let g:airline_powerline_fonts = 1
let g:airline_extensions = ['tabline']
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline_theme = 'base16_default'

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

let g:airline_symbols.crypt = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.linenr = '☰'
let g:airline_symbols.maxlinenr = ''
let g:airline_symbols.notexists = ''
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.readonly = 'RO'
let g:airline_symbols.spell = ''
let g:airline_symbols.whitespace = ''

" gitgutter configuration
let g:gitgutter_sign_added = ''
let g:gitgutter_sign_modified = ''
let g:gitgutter_sign_modified_removed = ''
let g:gitgutter_sign_removed = ''
let g:gitgutter_sign_removed_first_line = ''

" neomake configuration
let g:neomake_open_list = 2

" keybinds
if !has('nvim')
    execute "set <M-\\>=\e\\"
endif
" general
nnoremap <silent> <Leader>w :w<CR>
nnoremap <silent> <Leader>W :wq<CR>
nnoremap <silent> <C-h> :wincmd h<CR>
nnoremap <silent> <C-j> :wincmd j<CR>
nnoremap <silent> <C-k> :wincmd k<CR>
nnoremap <silent> <C-l> :wincmd l<CR>
" NERDTree
nnoremap <silent> <M-\> :NERDTreeToggle<CR>
inoremap <silent> <M-\> <Esc>:NERDTreeToggle<CR>
vnoremap <silent> <M-\> <Esc>:NERDTreeToggle<CR>
" buffers
nnoremap <silent> <Leader>bn :enew<CR>
nnoremap <silent> <Leader>N :bp<CR>
nnoremap <silent> <Leader>n :bn<CR>
nnoremap <silent> <Leader>bq :bp<BAR>bd #<CR>
nnoremap <silent> <Leader>bl :ls<CR>

colorscheme base16-default-dark
