set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" add all your plugins here (note older versions of Vundle
" used Bundle instead of Plugin)

Plugin 'Valloric/YouCompleteMe'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'sickill/vim-monokai',{'name':'monokai'}
Plugin 'morhetz/gruvbox',{'name':'gruvbox'}
Plugin 'vim-syntastic/syntastic'
Plugin 'nvie/vim-flake8'
Plugin 'preservim/nerdtree'
Plugin 'vim-airline/vim-airline'
Plugin 'tmhedberg/SimpylFold'
Plugin 'tpope/vim-commentary'
Plugin 'Konfekt/FastFold'
Plugin 'Yggdroot/indentline'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Set language encoding
set encoding=utf-8

" Open NERDTree automatically
nmap <C-B> :NERDTreeToggle<CR>

" Loading color scheme
syntax enable
set bg=dark
colorscheme gruvbox

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

" You Complete Me configs - Autocompletion
let mapleader=" "
" let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g :YcmCompleter GoToDefinitionElseDeclaration<CR>

" Full syntax highlighting in python
let python_highlight_all=1

" Enable folding
set foldmethod=indent
set foldlevel=99

" Enable to see docstrings for folded code
let g:SimpylFold_docstring_preview=1

" Enable proper PEP 8 indentation for Python
au BufNewFile, BufRead *.py
    \ set tabstop=4
    \ set softtabstop=4
    \ set shiftwidth=4
    \ set textwidth=79
    \ set expandtab
    \ set autoindent
    \ set fileformat=unix

" Enable Vim to flag unnecessary whitespace
au BufRead, BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

" You Complete Me python interpreter path
let g:ycm_python_interpreter_path = '~/.pyenv/versions/3.8.2/envs/base/bin/python'
let g:ycm_extra_conf_vim_data = [
  \  'g:ycm_python_interpreter_path',
  \]
let g:ycm_global_ycm_extra_conf = '~/global_extra_conf.py'
