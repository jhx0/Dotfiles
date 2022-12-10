call plug#begin('~/.vim/plugged')

" NerdTree Plugin for Filebrowser
Plug 'preservim/nerdtree'

" Lightline Plugin for Statusbar
Plug 'itchyny/lightline.vim'

" VIM DevIcons Plugin
Plug 'ryanoasis/vim-devicons'

" GitGutter Plugin
Plug 'airblade/vim-gitgutter'

" Molokai color scheme
Plug 'tomasr/molokai'

call plug#end()

" NerdTree Plugin Settings
map <C-o> :NERDTreeToggle<CR>

let NERDTreeShowHidden=1

set t_Co=256

"colorscheme sonokai
colorscheme molokai

" LightLine Plugin Settings
" Set these settings to remove delay and remove vims mode display
set ttimeoutlen=50
set laststatus=2
set noshowmode
let g:lightline = {
	 	\ 'colorscheme': 'molokai',
	 	\ }

set ts=4 sw=4
set history=500
filetype plugin on
filetype indent on
syntax enable
set ignorecase
set smartcase
set incsearch
set hlsearch
set showmatch
set noerrorbells
set novisualbell
set encoding=utf8
set ffs=unix
set nobackup
set nowb
set noswapfile
set showmode
set showcmd
set lazyredraw
set mouse=a
set relativenumber
set ttyfast
set undolevels=999
set title
set number
set colorcolumn=80
