set number
set ignorecase
set smartcase
set hidden
filetype plugin indent on
syntax on

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "Note: This would install all plugins and source vimrc again 
  "on opening vim for first time when plug.vim was not found 
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/pack/bundle/start')

Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-characterize'
Plug 'hhvm/vim-hack'
Plug 'junegunn/fzf',{'dir': '~/.fzf' , 'do': './install --all'}
Plug 'junegunn/fzf.vim'

" Initialize plugin system
call plug#end()

"custom mappings
let mapleader = ","

"insert mode mappings
inoremap jk <Esc>

"normal mode mappings

"windows movement
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-H> <C-W><C-H>
nnoremap <C-L> <C-W><C-L>

nnoremap <silent> <leader>r :source $MYVIMRC<cr>
nnoremap <leader>v :edit $MYVIMRC<cr>

if filereadable(glob("~/.vimrc.local"))
    source ~/.vimrc.local
endif
