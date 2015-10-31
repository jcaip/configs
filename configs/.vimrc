call pathogen#helptags()
execute pathogen#infect()
syntax on
filetype plugin indent on
set number
set foldmethod=syntax

nnoremap j gj
nnoremap k gk

inoremap jk <esc>

map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-l> <C-W>l
map <C-h> <C-W>h

map <Up> <NOP>
map <Left> <NOP>
map <Right> <NOP>
map <Down> <NOP>
