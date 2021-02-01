set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

Plugin 'VundleVim/Vundle.vim'
Plugin 'derekwyatt/vim-scala'
Plugin 'flazz/vim-colorschemes'
Plugin 'rust-lang/rust.vim'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'fatih/vim-go'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'elzr/vim-json'
Plugin 'vim-scripts/SQLUtilities'
Plugin 'vim-scripts/Align'
Plugin 'tarekbecker/vim-yaml-formatter'
Plugin 'leafgarland/typescript-vim'
Plugin 'peitalin/vim-jsx-typescript'


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" lets turn on syntax highlighting and make it colorful
syntax enable
colorscheme molokai

set number
set ruler
set relativenumber
set list
set cursorline!

set laststatus=2
let g:rustfmt_autosave = 1

set maxmemtot=2000000
set maxmempattern=1000000

" set filetypes as typescriptreact
autocmd BufNewFile,BufRead *.tsx,*.jsx set filetype=typescriptreact

" type specific settings
autocmd FileType go setlocal nolist

autocmd Filetype html setlocal expandtab ts=2 sts=2 sw=2
autocmd Filetype css setlocal expandtab ts=2 sts=2 sw=2

autocmd Filetype javascript setlocal expandtab ts=2 sts=2 sw=2
autocmd Filetype typescript setlocal expandtab ts=2 sts=2 sw=2
autocmd Filetype typescriptreact setlocal expandtab ts=2 sts=2 sw=2
autocmd Filetype *.tsx,*.ts,*.js setlocal expandtab ts=2 sts=2 sw=2
autocmd BufNewFile,BufRead *.json setlocal expandtab ts=2 sts=2 sw=2
