
silent! 
call plug#begin('~/.config/nvim/autoload/plugged')

"autocompletion

Plug 'gruvbox-community/gruvbox'
Plug 'chun-yang/auto-pairs'


"highlight error
Plug 'vim-syntastic/syntastic'
"FZF
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'airblade/vim-rooter'
"extra

"Plug 'HerringtonDarkholme/yats.vim' " TS Syntax
call plug#end()

set exrc
syntax on
set encoding=UTF-8
set clipboard=unnamed
set relativenumber

"autoindent
set smartindent
set autoindent
set shiftwidth=4

set nu
set hidden
set noerrorbells
" better search
set smartcase
set hlsearch

set guioptions-=m  "remove menu bar
set guioptions-=T  "remove toolbar
set guioptions-=r  "remove right-hand scroll bar
set guioptions-=L  "remove left-hand scroll bar

" history
set noswapfile
set nobackup
"set undodir=~/.vim/undodir
"set undodir
set tabstop=2 softtabstop=2
set shiftwidth=2
set expandtab
set nohlsearch
set scrolloff=10
set signcolumn=yes
set cmdheight=1 
set updatetime=300
set guifont=fixedsys:h12
set background=dark
set termguicolors
colorscheme gruvbox









"-nmap

"navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

"-others

" c++11 support in syntastic
let g:syntastic_cpp_compiler = 'clang++'
let g:syntastic_cpp_compiler_options = ' -std=c++11'

" run code
augroup compileandrun
    autocmd!
    autocmd filetype python nnoremap <f5> :w <bar> :!python3 % <cr>
    autocmd filetype cpp nnoremap <f5> :w <bar> !g++ -std=c++11 % <cr> :vnew <bar> :te "a.exe" <cr><cr>
    autocmd filetype cpp nnoremap <f6> :vnew <bar> :te "a.exe" <cr>
    autocmd filetype c nnoremap <f5> :w <bar> !make %:r && ./%:r <cr>
    autocmd filetype java nnoremap <f5> :w <bar> !javac % && java %:r <cr>
augroup END
