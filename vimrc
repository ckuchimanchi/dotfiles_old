set number
set ignorecase
set smartcase
set hidden
set showmatch
set incsearch
set undofile
set undodir=~/.vim/undo 
set backspace=indent,eol,start
set splitright

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

Plug 'https://github.com/tpope/vim-unimpaired'
Plug 'https://github.com/tpope/vim-repeat'
Plug 'https://github.com/tpope/vim-surround'
Plug 'https://github.com/tpope/vim-commentary'
Plug 'https://github.com/tpope/vim-characterize'
Plug 'https://github.com/hhvm/vim-hack'
Plug 'https://github.com/junegunn/fzf',{'dir': '~/.fzf' , 'do': './install --all'}
Plug 'https://github.com/junegunn/fzf.vim'
Plug 'https://github.com/sjl/gundo.vim'
Plug 'https://github.com/vim-airline/vim-airline'
Plug 'https://github.com/godlygeek/tabular'
Plug 'https://github.com/MaxMEllon/vim-jsx-pretty'
Plug 'https://github.com/mxw/vim-xhp'
Plug 'https://github.com/dense-analysis/ale' 


" Initialize plugin system
call plug#end()

"custom mappings
let mapleader = " "

"insert mode mappings
inoremap jk <Esc>

"normal mode mappings

"windows movement
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-H> <C-W><C-H>
nnoremap <C-L> <C-W><C-L>

nnoremap <leader>ev :edit $MYVIMRC<CR>
nnoremap <leader>ez :edit ~/.zshrc<CR>
nnoremap <silent> <leader>sv :source $MYVIMRC<CR>

nnoremap <leader><space> :set hlsearch!<cr>

nnoremap <C-p> :<C-u>FZF<cr>

if filereadable(glob("~/.vimrc.local"))
    source ~/.vimrc.local
endif
