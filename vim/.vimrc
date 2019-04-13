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
  Plug 'racer-rust/vim-racer'
  Plug 'airblade/vim-gitgutter'
  Plug 'scrooloose/nerdtree'
  Plug 'ctrlpvim/ctrlp.vim'
  if has('nvim')
    Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
  else
    Plug 'Shougo/deoplete.nvim'
    Plug 'roxma/nvim-yarp'
    Plug 'roxma/vim-hug-neovim-rpc'
  endif
call plug#end()

function! OnBattery()
  return filereadable('/sys/class/power_supply/AC/online')
    && readfile('/sys/class/power_supply/AC/online') == ['0']
endfunction

if OnBattery()
  call neomake#configure#automake('w', 500)
else
  call neomake#configure#automake('inrw', 250)
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
"set linebreak
"set breakindent
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
let g:airline#extensions#tabline#left_sep = ''
let g:airline#extensions#tabline#left_alt_sep = ''
let g:airline#extensions#tabline#formatter = 'default'
let g:airline_theme = 'base16_default'

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

let g:airline_left_sep = ''
let g:airline_right_sep = ''
let g:airline_symbols.crypt = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.linenr = ''
let g:airline_symbols.maxlinenr = ''
let g:airline_symbols.notexists = ''
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.readonly = 'RO'
let g:airline_symbols.spell = ''
let g:airline_symbols.whitespace = ''

" deoplete configuration
let g:deoplete#enable_at_startup = 1

" gitgutter configuration
let g:gitgutter_sign_added = ''
let g:gitgutter_sign_modified = ''
let g:gitgutter_sign_modified_removed = ''
let g:gitgutter_sign_removed = ''
let g:gitgutter_sign_removed_first_line = ''

" neomake configuration
let g:neomake_open_list = 2

" NERDTree
let NERDTreeShowHidden = 1

" keybinds
" terminal
tnoremap <silent> <Esc> <C-\><C-n>
" general
nnoremap <silent> <Leader>w :w<CR>
nnoremap <silent> <Leader>W :wq<CR>
inoremap <silent> <Leader><Leader> <Esc>
tnoremap <silent> <Leader><Leader> <Esc>
vnoremap <silent> <Leader><Leader> <Esc>
" NERDTree
nnoremap <silent> <C-\> :NERDTreeFocus<CR>
" buffers
nnoremap <silent> <Leader>bn :enew<CR>
nnoremap <silent> <Leader>N :bp<CR>
nnoremap <silent> <Leader>n :bn<CR>
nnoremap <silent> <Leader>bq :bp<BAR>bd #<CR>
nnoremap <silent> <Leader>bl :ls<CR>
" NeoMake
nnoremap <silent> <Leader>l :Neomake<CR>
" Deoplete
inoremap <silent> <S-Tab> <C-x><C-o>
" Rust racer
au FileType rust nmap <C-]> <Plug>(rust-def)

colorscheme base16-default-dark
