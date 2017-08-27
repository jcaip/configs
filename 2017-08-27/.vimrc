set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle
" requied! 
Plugin 'VundleVim/Vundle.vim'

Plugin 'jpalardy/vim-slime'
let g:slime_target = "tmux"

Plugin 'ekalinin/Dockerfile.vim'

"Vim markdown
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
let g:vim_markdown_math=1

Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'

Plugin 'valloric/YouCompleteMe'
let g:ycm_python_binary_path = '/usr/bin/python'

Plugin 'raimondi/delimitmate'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'ervandew/supertab'

Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'majutsushi/tagbar'

Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
let g:airline_theme='papercolor'
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1

Plugin 'NLKNguyen/papercolor-theme'
"Plugin 'heavenshell/vim-pydocstring'

Plugin 'scrooloose/syntastic'
let g:syntastic_cpp_compiler = 'clang++'
let g:syntastic_cpp_compiler_options = '-std=c++11 -stdlib=libc++'
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq= 0

Plugin 'xolox/vim-notes'
let g:notes_directories = ['~/Documents/Notes']
Plugin 'xolox/vim-misc'
Plugin 'itchyny/calendar.vim'
let g:calendar_google_calendar = 1

Plugin 'terryma/vim-multiple-cursors'

Plugin 'christoomey/vim-tmux-navigator'
call vundle#end()

set background=light
colorscheme PaperColor

filetype plugin indent on 
syntax on
set laststatus=2
set number
set expandtab
set shiftwidth=4
set softtabstop=4
set clipboard=unnamedplus
set cursorline
set nobackup
set nofoldenable

map <F2> :NERDTreeToggle<CR>
map <F3> :nohlsearch<CR>
map <F4> :set hlsearch<CR>

map <F5> :set foldenable<CR>
map <F6> :set nofoldenable<CR>

map <F8> :TagbarToggle<CR>
map <F9> :set nopaste<CR>
map <F10> :set paste<CR>

nnoremap <C-j> <C-W><C-j>
nnoremap <C-k> <C-W><C-k>
nnoremap <C-l> <C-W><C-l>
nnoremap <C-h> <C-W><C-h>
