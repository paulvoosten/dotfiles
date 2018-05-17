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

function! OnBattery()
  return filereadable('/sys/class/power_supply/AC/online')
    && readfile('/sys/class/power_supply/AC/online') == ['0']
endfunction

if OnBattery()
  call neomake#configure#automake('w', 500)
else
  call neomake#configure#automake('nrw', 250)
endif

set nocompatible
set laststatus=1
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
set mouse=a
set clipboard=unnamedplus
set encoding=utf-8

let mapleader = ','
let base16colorspace = 256
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
let g:airline_symbols.linenr = ''
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
  execute "set <A-\\>=\e\\"
  execute "set <A-h>=\eh"
  execute "set <A-j>=\ej"
  execute "set <A-k>=\ek"
  execute "set <A-l>=\el"
endif
" general
nnoremap <silent> <Leader>w :w<CR>
inoremap <silent> <Leader>w <C-\><C-n>:w<CR>
vnoremap <silent> <Leader>w <C-\><C-n>:w<CR>
nnoremap <silent> <Leader>W :wq<CR>
inoremap <silent> <Leader>W <C-\><C-n>:wq<CR>
vnoremap <silent> <Leader>W <C-\><C-n>:wq<CR>
inoremap <silent> <Leader><Leader> <C-\><C-n>
tnoremap <silent> <Leader><Leader> <C-\><C-n>
vnoremap <silent> <Leader><Leader> <C-\><C-n>
nnoremap <silent> <A-h> <C-w>h
inoremap <silent> <A-h> <C-\><C-n><C-w>h
tnoremap <silent> <A-h> <C-\><C-n><C-w>h
vnoremap <silent> <A-h> <C-\><C-n><C-w>h
nnoremap <silent> <A-j> <C-w>j
inoremap <silent> <A-j> <C-\><C-n><C-w>j
tnoremap <silent> <A-j> <C-\><C-n><C-w>j
vnoremap <silent> <A-j> <C-\><C-n><C-w>j
nnoremap <silent> <A-k> <C-w>k
inoremap <silent> <A-k> <C-\><C-n><C-w>k
tnoremap <silent> <A-k> <C-\><C-n><C-w>k
vnoremap <silent> <A-k> <C-\><C-n><C-w>k
nnoremap <silent> <A-l> <C-w>l
inoremap <silent> <A-l> <C-\><C-n><C-w>l
tnoremap <silent> <A-l> <C-\><C-n><C-w>l
vnoremap <silent> <A-l> <C-\><C-n><C-w>l
" NERDTree
nnoremap <silent> <A-\> :NERDTreeToggle<CR>
inoremap <silent> <A-\> <C-\><C-n>:NERDTreeToggle<CR>
tnoremap <silent> <A-\> <C-\><C-n>:NERDTreeToggle<CR>
vnoremap <silent> <A-\> <C-\><C-n>:NERDTreeToggle<CR>
" buffers
nnoremap <silent> <Leader>bn :enew<CR>
inoremap <silent> <Leader>bn <C-\><C-n>:enew<CR>
vnoremap <silent> <Leader>bn <C-\><C-n>:enew<CR>
nnoremap <silent> <Leader>N :bp<CR>
inoremap <silent> <Leader>N <C-\><C-n>:bp<CR>
vnoremap <silent> <Leader>N <C-\><C-n>:bp<CR>
nnoremap <silent> <Leader>n :bn<CR>
inoremap <silent> <Leader>n <C-\><C-n>:bn<CR>
vnoremap <silent> <Leader>n <C-\><C-n>:bn<CR>
nnoremap <silent> <Leader>bq :bp<BAR>bd #<CR>
inoremap <silent> <Leader>bq <C-\><C-n>:bp<BAR>bd #<CR>
vnoremap <silent> <Leader>bq <C-\><C-n>:bp<BAR>bd #<CR>
nnoremap <silent> <Leader>bl :ls<CR>
inoremap <silent> <Leader>bl <C-\><C-n>:ls<CR>
vnoremap <silent> <Leader>bl <C-\><C-n>:ls<CR>
" NeoMake
nnoremap <silent> <Leader>l :Neomake<CR>
inoremap <silent> <Leader>l <C-\><C-n>:Neomake<CR>
vnoremap <silent> <Leader>l <C-\><C-n>:Neomake<CR>

colorscheme base16-default-dark
