set nocompatible
filetype off
set backspace=indent,eol,start
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle
" requied! 
Plugin 'VundleVim/Vundle.vim'
Plugin 'chrisbra/Recover.vim'

Plugin 'jpalardy/vim-slime'
let g:slime_target = "tmux"
Plugin 'christoomey/vim-tmux-navigator'

Plugin 'ekalinin/Dockerfile.vim'

"Vim markdown
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
let g:vim_markdown_math=1

Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'

Plugin 'raimondi/delimitmate'

Plugin 'tpope/vim-surround'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'ervandew/supertab'

Plugin 'scrooloose/nerdtree'
let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="~"
Plugin 'scrooloose/nerdcommenter'
Plugin 'majutsushi/tagbar'

Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
let g:airline_theme='gruvbox'
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 0

Plugin 'heavenshell/vim-pydocstring'
nmap <silent> <C-m> <Plug>(pydocstring)

Plugin 'w0rp/ale'
let g:ale_sign_column_always = 1
let g:airline#extensions#ale#enabled = 1
let g:ale_python_pylint_executable = $VIRTUAL_ENV . '/bin/pylint'
let g:ale_python_flake8_executable = $VIRTUAL_ENV . '/bin/flake8'
let g:ale_python_flake8_args="--ignore=E501"
let g:ale_linters = {
\   'python': ['flake8'],
\}

Plugin 'terryma/vim-multiple-cursors'
Plugin 'morhetz/gruvbox'
Plugin 'NLKNguyen/papercolor-theme'
"Plugin 'lervag/vimtex'
Plugin 'vim-latex/vim-latex'
Plugin 'xuhdev/vim-latex-live-preview'
let g:livepreview_previewer = 'Preview'

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

au BufRead *.md setlocal spell
au BufRead *.markdown setlocal spell

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

nnoremap j gj
nnoremap k gk

autocmd Filetype tex setl updatetime=1

"vimtex cleanup
"augroup MyVimtex
    "autocmd!
    "autocmd User VimtexEventQuit call vimtex#latexmk#clean(0)
"augroup END

