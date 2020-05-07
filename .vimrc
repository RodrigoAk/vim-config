set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=$HOME/.vim/bundle/Vundle.vim
"call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
call vundle#begin('$HOME/.vim/bundle/')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" add all your plugins here (note older versions of Vundle
" used Bundle instead of Plugin)

Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'vim-syntastic/syntastic'
Plugin 'nvie/vim-flake8'
Plugin 'preservim/nerdtree'
Plugin 'vim-airline/vim-airline'
Plugin 'tmhedberg/SimpylFold'
Plugin 'tpope/vim-commentary'
Plugin 'Konfekt/FastFold'
Plugin 'Yggdroot/indentline'
Plugin 'lifepillar/vim-mucomplete'
Plugin 'morhetz/gruvbox'
Plugin 'jiangmiao/auto-pairs'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" For GVim
set guifont=Consolas:h12:cANSI:qDRAFT
set guioptions-=m "remove menu bar
set guioptions-=T "remove toolbar
set guioptions-=r "remove right-hand scroll bar
set guioptions-=L "remove left-hand scroll bar

" Set language encoding
set encoding=utf-8

" Loading color scheme
set t_Co=256 " Enable colors on windows cmd
set background=dark
syntax on
colorscheme gruvbox

" Mandatory MuComplete settings
set completeopt+=menuone
set completeopt+=noselect " or set completeopt+=noinsert
" Some recommended settings
set shortmess+=c " Shut off completion messages
set belloff+=ctrlg " If Vim beeps during completion
set completeopt-=preview
set completeopt+=longest
let g:jedi#popup_on_dot=1 " It may be 1 as well

" Enable to delete indentations
set backspace=indent,eol,start

" Open NERDTree automatically
nmap <C-B> :NERDTreeToggle<CR>

" Set Relative Number
set relativenumber
set number

" split locations
set splitbelow
set splitright

" split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Full syntax highlighting in python
let python_highlight_all=1

" Enable folding
set foldmethod=indent
set foldlevel=99

" Enable to see docstrings for folded code
let g:SimpylFold_docstring_preview=1

set tabstop=4
set shiftwidth=4
set expandtab

au BufNewFile, BufRead *.py *.c
    \ set softtabstop=4
    \ set textwidth=79
    \ set autoindent
    \ set fileformat=unix
