"breaks compatibility with vi
set nocompatible

"to prevent security exploits
set modelines=0

"tab settings
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab

"general settings
syntax on
set list
set nu
set encoding=utf-8
set scrolloff=3
set relativenumber
set showmode
set showcmd
set hidden
set wildmenu
set wildmode=list:longest
set cursorline
set ttyfast
set ruler
set backspace=indent,eol,start
set laststatus=2

"searching and moving settings
set ignorecase
set smartcase
set incsearch
set showmatch
set hlsearch
set wrapscan
nnoremap <leader><space> :noh<cr>
nnoremap <tab> %
vnoremap <tab> %

set wrap
set textwidth=79
set formatoptions=qrn1

"making j & k behave rationally
nnoremap j gj
nnoremap k gk

nnoremap ; :
au FocusLost * :wa
inoremap jk <ESC>

" Molokai
syntax on
set background=dark
"let g:solarized_termcolors = 256
colorscheme molokai

set autoindent     " always set autoindenting on
set smartindent
set cindent

"stop mutt from indenting each paragraph
au FileType mail set noautoindent
au FileType mail set nosmartindent
au FileType mail set nocindent
au FileType mail set indentexpr=
"au FileType mail filetype indent off

"window navigation
map <C-H> <C-W><Left>
map <C-L> <C-W><Right>
map <C-J> <C-W><Down>
map <C-K> <C-W><Up>

"spacebar in insert mode inserts a single character
:nmap <Space> i_<Esc>r

" set listchars=eol:↓,tab:→\ ,trail:↤,extends:>,precedes:<
" set list

"nerdtree shortcut
:nmap <c-k><c-b> :NERDTreeToggle<CR>

"to disable folding which is default with plasticboy/vim-markdown
let g:vim_markdown_folding_disabled=1

"ctags-related
set tags=./.tags,.tags,./tags,tags

"use with syntastic

"scala
let g:syntastic_disabled_filetypes=['scala']

"haskell
let g:syntastic_haskell_checkers = ['hdevtools', 'hlint']
let g:hdevtools_options = '-g -Wall -g-isrc'

"python
let g:syntastic_python_checkers=['flake8']
