" Plugins
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Bundle 'gmarik/Vundle.vim'
Bundle 'kien/ctrlp.vim'
Bundle 'tpope/vim-fugitive'
Bundle 'airblade/vim-gitgutter'
Bundle 'bling/vim-airline'
Bundle 'jelera/vim-javascript-syntax'
Bundle 'leafgarland/typescript-vim'
Bundle 'sudar/vim-arduino-syntax'
Bundle 'plasticboy/vim-markdown'
Bundle 'scrooloose/nerdtree'
call vundle#end()
filetype plugin on

" Colors
syntax enable
set t_Co=256
set background=dark
colorscheme iceberg
:let g:airline_theme='base16'

"Highlighting
set number
set cursorline
set showcmd
set showmatch
au BufNewFile,BufRead *.pv set filetype=ocaml

"Formatting
set smarttab
set autoindent
set noexpandtab
set tabstop=4
set shiftwidth=4
set wrap
set ffs=unix,dos,mac
set encoding=utf8

"Reading
set autoread

"Disable .swp backups
set nobackup

"Search
set magic
set incsearch
set hlsearch
set ignorecase
set smartcase

"Surrounding UX
set nofoldenable
set lazyredraw
set clipboard=unnamed
set esckeys
set backspace=indent,eol,start
set ttyfast
set nostartofline
set noshowmode
set wildmenu
set ruler
set laststatus=2
let g:airline_powerline_fonts=1
:au FileChangedShell * echo "Warning: File changed on disk"

"Mappings
" Ctrl+K to repeat last colon command
noremap <C-K> @:<CR>
" Tab navigation closer to split navigation
map <C-E><C-E> :tabnext<CR>
" Move through wrapped lines
nmap <silent> j gj
nmap <silent> k gk
nmap <silent> <Down> gj
nmap <silent> <Up> gk
imap <silent> <Down> <C-o>gj
imap <silent> <Up> <C-o>gk
" Toggle NERDTree
map <C-N> :NERDTreeToggle<CR>
