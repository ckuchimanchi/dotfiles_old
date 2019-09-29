set number
set ignorecase
set smartcase
set hidden
filetype plugin indent on
syntax on

packadd minpac

call minpac#init()

call minpac#add('tpope/vim-unimpaired')
call minpac#add('tpope/vim-repeat')
call minpac#add('tpope/vim-surround')
call minpac#add('tpope/vim-commentary')
call minpac#add('tpope/vim-characterize')
call minpac#add('hhvm/vim-hack')
call minpac#add('junegunn/fzf.vim')

"custom mappings
let mapleader = ","

"insert mode mappings
inoremap jk <Esc>

"command mode mappings
command! PackUpdate call minpac#update()
command! PackClean call minpac#clean()

"normal mode mappings

"windows movement
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-H> <C-W><C-H>
nnoremap <C-L> <C-W><C-Lk

nnoremap <leader>r :source $MYVIMRC<cr>
nnoremap <leader>v :edit $MYVIMRC<cr>

if filereadable(glob("~/.vimrc.local"))
    source ~/.vimrc.local
endif
