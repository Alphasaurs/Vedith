
call plug#begin('~/.vim/plugged')
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'gruvbox-community/gruvbox'
Plug 'christoomey/vim-tmux-navigator'
Plug 'ryanoasis/vim-devicons'
Plug 'airblade/vim-gitgutter'
Plug 'ctrlpvim/ctrlp.vim' " fuzzy find files
Plug 'christoomey/vim-tmux-navigator'
Plug 'HerringtonDarkholme/yats.vim' " TS Syntax
call plug#end()

set exrc
syntax on
set clipboard=unnamed
set relativenumber
set autoindent
set nu
set hidden
set noerrorbells
" better search
set smartcase
set hlsearch
set incsearch

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
set cmdheight=2 
set guifont=Fixedsys:h11
set updatetime=300
set background=dark
set termguicolors
colorscheme gruvbox


" coc config
let g:coc_global_extensions = [
      \ 'coc-snippets',    
      \ 'coc-pairs',
      \ 'coc-eslint', 
      \ 'coc-prettier', 
      \ 'coc-json', 
      \ ]

"" \ 'coc-tsserver',
":CocCommand snippets.editSnippets
command! -nargs=0 Prettier :CocCommand prettier.formatFile

inoremap jk <ESC>



"Remap keys
" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Remap for rename current word
nmap <F2> <Plug>(coc-rename)

" Remap for format selected region
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)
inoremap jj <Esc>
