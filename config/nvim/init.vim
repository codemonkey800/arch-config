call plug#begin('~/.config/nvim/plugins')

Plug 'kien/ctrlp.vim'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'bling/vim-bufferline'
Plug 'scrooloose/nerdtree'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'gitignore'
Plug 'editorconfig/editorconfig-vim'
Plug 'kassio/neoterm'
Plug 'benekastah/neomake'

filetype indent plugin on     " Load file type plugins and indent
call plug#end()
filetype indent plugin on     " Load file type plugins and indent

filetype indent plugin on

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" General Settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set ignorecase smartcase       " Case insensitive search
set modeline                   " Allow Vim mode lines to change Vim settings
set hidden                     " Allow change to buffer without saving
set mouse=a                    " Sometimes a mouse is useful ;)
set noerrorbells               " Fuck bells
set novisualbell               " Fuck bells man
set t_Co=256                   " COLORS
set exrc                       " Scan working directory for .vimrc files
set secure                     " Do the above securely

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" UI Settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
syntax on

set ruler                      " Always show current positions along the bottom
set cmdheight=1                " Command bar is 1 unit high
set number                     " Show line numbers
set lazyredraw                 " Do not redraw while running macros
set report=0                   " Always report how many lines changed

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Text Formatting/Tab Settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set formatoptions=tcrqn        " autowrap and comments or something
set smartindent                " Smart indent or some shit
set cindent                    " C indent or some shit
set showmatch                  " Show matching brackets
set matchtime=5                " BLINK THE FUCKING BRACKETS

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" File settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set encoding=utf-8            " Let Vim use UTF-8 encoding
set fileencoding=utf-8        " Default for new files
set termencoding=utf-8        " Terminal encoding
set fileformats=unix,dos,mac  " Supports all three in this order
set fileformat=unix           " Default file format

set tabstop=4                 " 4 spaces
set softtabstop=4             " 4 spaces
set shiftwidth=4              " 4 spaces
set expandtab                 " Fuck tabs ;)

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Folding settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set foldenable                " Enable folding
set foldlevelstart=10         " Open most folds by default
set foldnestmax=10            " TOO MANY FOLDS D=<

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Keymap settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Fuck the other mapleader key lol
let mapleader = ","

" Escape insert mode
imap jk <esc>

" Move vertically by visual line
noremap j gj
noremap k gk

" Swap capital H and L for begin and end of lines
noremap H ^
noremap L $

" Don't do anything yo
noremap $ <nop>
noremap ^ <nop>

" Turn off search highlight
nnoremap <leader><space> :nohlsearch<CR>

" Space open/closes folds
nnoremap <space> za

" Copy/Paste to X11 clipboard
vmap <leader>c "+y
nmap <leader>v "+p

" Adds a new line below or above without entering insert mode
noremap o o<esc>k
noremap O O<esc>j

" Maps window split navigation to saner shortcuts
nmap <silent> <Up>    :wincmd k<CR>
nmap <silent> <Down>  :wincmd j<CR>
nmap <silent> <Left>  :wincmd h<CR>
nmap <silent> <Right> :wincmd l<CR>

nmap <silent> <C-Up>    :wincmd +<CR>
nmap <silent> <C-Down>  :wincmd -<CR>
nmap <silent> <C-Left>  :wincmd <<CR>
nmap <silent> <C-Right> :wincmd ><CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugin settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Airline settings
let g:airline#extensions#tabline#enabled = 1 

" Syntastic settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" NERDTree settings
map <C-n> :NERDTreeToggle<CR>

autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Neomake settings
autocmd! BufWritePost * Neomake


