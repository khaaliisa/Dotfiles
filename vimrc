set number
syntax on
set autoindent
set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab
set clipboard=unnamed

" automatically install vim-plug if not already installed
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" color scheme
colorscheme hive 

" set up vimwiki
set nocompatible
filetype plugin indent on
let g:vimwiki_list = [{'path': '~/Documents/Notes/',
                      \ 'syntax': 'markdown', 'ext': '.md'}]

" limit ALE to only OmniSharp
let g:ale_linters = {
\ 'cs': ['OmniSharp']
\}

let g:OmniSharp_server_stdio = 1
let g:OmniSharp_server_use_mono = 1
let g:python_host_prog = '/usr/local/bin/python'
let g:python3_host_prog = '/usr/local/bin/python3'

" remap keys
:nnoremap j gj
:nnoremap k gk
:nnoremap <esc> :noh<return><esc>

call plug#begin()
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' } 
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-fugitive'
Plug 'Valloric/YouCompleteMe', { 'do': './install.py' }
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'dense-analysis/ale'
Plug 'jiangmiao/auto-pairs'
Plug 'vim-airline/vim-airline'
Plug 'vimwiki/vimwiki'
Plug 'OmniSharp/omnisharp-vim'
Plug 'yuttie/comfortable-motion.vim'
Plug 'pangloss/vim-javascript'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() } }
Plug 'mattn/calendar-vim'
Plug 'enricobacis/vim-airline-clock'
Plug 'AlessandroYorba/Alduin'
Plug 'rafi/awesome-vim-colorschemes'
Plug 'rainglow/vim'
Plug 'numirias/semshi', {'do': ':UpdateRemotePlugins'}
call plug#end()
