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
call plug#end()

call neomake#configure#automake('nrw', 500)

set nocompatible
set laststatus=2
set hid
set et
set sw=4
set ts=4
set sta
set nu
set rnu
set lbr
set bri
set list
set lcs=tab:▸\ ,trail:·,eol:¬,nbsp:_,extends:>,precedes:<
set hls
set ic
set noeb
set enc=utf-8

let mapleader = ','
let NERDTreeMinimalUI = 1

" airline configuration
let g:airline_extensions = ['tabline']
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline_theme = 'base16_default'
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''

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
