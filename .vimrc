"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Vundle 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'fisadev/vim-debug.vim'
Plugin 'VundleVim/Vundle.vim'
Plugin 'ervandew/supertab.git'
Plugin 'scrooloose/syntastic.git'
Plugin 'jiangmiao/auto-pairs.git'
Plugin 'scrooloose/nerdtree.git'
Plugin 'vim-airline/vim-airline.git'
Plugin 'kien/ctrlp.vim'
Plugin 'majutsushi/tagbar'
Plugin 'nvie/vim-flake8.git'
Plugin 'airblade/vim-gitgutter.git'
" Plugin 'Valloric/YouCompleteMe'
Plugin 'davidhalter/jedi-vim'
Plugin 'Yggdroot/indentLine'
Plugin 'tell-k/vim-autopep8'
Plugin 'scrooloose/nerdcommenter'

call vundle#end()            " required
filetype plugin indent on    " required


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set autoread
" set cursorcolumn
set cursorline
set fileformats+=dos
set autoindent
set smartindent
autocmd FileType php setlocal noeol binary 
let mapleader=";"

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Colors and Fonts
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Enable syntax highlighting
syntax enable

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Use spaces instead of tabs
set nu
set sw=4
set sts=4
set tabstop=4 shiftwidth=4 expandtab
set ts=4


""""""""""""""""""""""""""""""
" => Status line
""""""""""""""""""""""""""""""
" Always show the status line
set laststatus=2

" Format the status line
set statusline=%t[%{strlen(&fenc)?&fenc:'none'},%{&ff}]%h%m%r%y%=%c,%l/%L\ %P


""""""""""""""""""""""""""""""
" => KeyMap
"""""""""""""""""""""""""""""""
inoremap jj <ESC>

""""""""""""""""""""""""""""""
" => Plugin Settings 
"""""""""""""""""""""""""""""""
" flake8
autocmd BufWritePost *.py call Flake8()


" scrooloose/syntastic 
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0


" NERDTree 
" autocmd vimenter * NERDTree
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let NERDTreeChDirMode=1
let NERDTreeShowBookmarks=1
let NERDTreeIgnore=['\~$', '\.pyc$', '\.swp$']
let NERDTreeWinSize=25

" PEP8
let g:pep8_ignore="E501,W601"

