" Don't try to be vi compatible
set nocompatible

" Helps force plugins to load correctly when it is turned back on below
filetype off

" Powerline
set rtp+=/usr/lib/python3/dist-packages/powerline/bindings/vim/

" Always show statusline
set laststatus=2

" Use 256 colours (Use this setting only if your terminal supports 256 colours)
set t_Co=256


set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" TODO: Load plugins here (pathogen or vundle)
Plugin 'arcticicestudio/nord-vim'
Plugin 'godlygeek/tabular'

call vundle#end()

" Turn on syntax highlighting
syntax on

" For plugins to load correctly
filetype plugin indent on

" TODO: Pick a leader key
" let mapleader = ","

" Security
set modelines=0

" Show line numbers
:set number relativenumber
:augroup numbertoggle
:  autocmd!
:  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
:  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
:augroup END

" Show file stats
set ruler

" Blink cursor on error instead of beeping (grr)
" set visualbell

" Set "jk" to leave insert mode
" inoremap jk <ESC>

" Encoding
set encoding=utf-8

" Whitespace
" set wrap
" set textwidth=79
" set formatoptions=tcqrn1
" set tabstop=2
" set shiftwidth=2
" set softtabstop=2
" set expandtab
" set noshiftround

" Cursor motion
set scrolloff=3
set backspace=indent,eol,start
set matchpairs+=<:> " use % to jump between pairs
runtime! macros/matchit.vim

" Move up/down editor lines
nnoremap j gj
nnoremap k gk

" Allow hidden buffers
set hidden

" Rendering
set ttyfast

" Status bar
set laststatus=2

" Last line
set showmode
set showcmd

" Searching
nnoremap / /\v
vnoremap / /\v
set hlsearch
set incsearch
set ignorecase
set smartcase
set showmatch
map <leader><space> :let @/=''<cr> " clear search

" Remap help key.
inoremap <F1> <ESC>:set invfullscreen<CR>a
nnoremap <F1> :set invfullscreen<CR>
vnoremap <F1> :set invfullscreen<CR>

" Remaps auto-close html tags to space after </
:iabbrev </ </<C-X><C-O>


" Textmate holdouts

" Formatting
map <leader>q gqip

" Visualize tabs and newlines
set listchars=tab:▸\ ,eol:¬
" Uncomment this to enable by default:
" set list " To enable by default
" Or use your leader key + l to toggle on/off
map <leader>l :set list!<CR> " Toggle tabs and EOL

" indentation
:filetype indent on
:set filetype=html
:set smartindent  
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab ts=4 sw=4 ai

" Color scheme (terminal)
" set t_Co=256
" set background=dark
colorscheme nord
