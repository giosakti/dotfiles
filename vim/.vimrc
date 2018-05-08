" Use Vim settings instead of Vi
set nocompatible

" Helps force plugins to load correctly when it is turned back on below
filetype off

" Switch syntax highlighting on
syntax on

" Enable file type detection and do language-dependent indenting
filetype plugin indent on

" Set leader key
let mapleader = ","

" Security
set modelines=0

" Show line numbers
set number

" Show file stats
set ruler

" Blink cursor on error instead of beeping (grr)
set visualbell

" Encoding
set encoding=utf-8

" Whitespace
set wrap
set textwidth=99
set formatoptions=tcqrn1
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set noshiftround

" Cursor motion
set scrolloff=3
set backspace=indent,eol,start
set matchpairs+=<:> " use % to jump between pairs
runtime! macros/matchit.vim

" Allow hidden buffers, don't limit to 1 file per window/split
set hidden

" Rendering
set ttyfast

" Status bar
set laststatus=2

" Last line
set showmode
set showcmd

" Move swap files to different directory
set directory=~/.vim/swapfiles//

" Searching
" nnoremap / /\v
" vnoremap / /\v
set hlsearch
set incsearch
set ignorecase
set smartcase
set showmatch
map <leader><space> :let @/=''<cr> " clear search

" Visualize tabs and newlines
set listchars=tab:▸\ ,eol:¬
" Uncomment this to enable by default:
" set list " To enable by default
" Or use your leader key + l to toggle on/off
map <leader>l :set list!<CR> " Toggle tabs and EOL

" Set 256-color mode
set t_Co=256

" Color scheme (terminal)
colorscheme gruvbox 

" Set default split behaviour
set splitright
set splitbelow


