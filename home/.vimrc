" THIS IS FROM https://scthornton.github.io/cheatsheets/vimrc_config/
" ===== VISUAL ENHANCEMENTS =====
" Line numbers and display
set number                    " Show line numbers
set cursorline               " Highlight the current line
set ruler                    " Show cursor position in status line
set showcmd                  " Show partial commands in status line
set showmatch                " Highlight matching brackets/parentheses

" Colors and syntax
syntax on                " Enable syntax highlighting
set background=dark          " Use dark background for better contrast
"colorscheme desert           " Bright, vibrant color scheme
" Alternative bright schemes to try:
"colorscheme pablo
colorscheme torte

" Status line configuration
set laststatus=2            " Always show status line
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ %{strftime(\"%d/%m/%y\ -\ %H:%M\")}

" Visual guides
"set colorcolumn=80          " Show column at 80 characters
set list                    " Show invisible characters
set listchars=tab:→\ ,trail:·,extends:>,precedes:<,nbsp:+

" ===== BEHAVIORAL ENHANCEMENTS =====
" Indentation and tabs
set autoindent              " Automatically indent new lines
set smartindent             " Smart auto-indenting
set expandtab               " Use spaces instead of tabs
set tabstop=4               " Tab width is 4 spaces
set shiftwidth=4            " Indent width is 4 spaces
set softtabstop=4           " Backspace deletes 4 spaces

" Search behavior
set ignorecase              " Case-insensitive search
set smartcase               " Case-sensitive if uppercase letters used
set incsearch               " Incremental search (highlight as you type)
set hlsearch                " Highlight all search matches

" File handling
set autoread                " Automatically reload files changed outside vim
set backup                  " Create backup files
set backupdir=~/.vim/backup " Store backups in specific directory
set directory=~/.vim/swap   " Store swap files in specific directory
set undofile                " Persistent undo across sessions
set undodir=~/.vim/undo     " Store undo files in specific directory

" Editor behavior
set backspace=indent,eol,start  " Allow backspace over everything
set scrolloff=5             " Keep 5 lines visible above/below cursor
set wrap                    " Wrap long lines
set linebreak               " Break lines at word boundaries
set mouse=a                 " Enable mouse support


" === Cody Personal
set relativenumber

" Toggle line numbers
nnoremap <F2> :set number!<CR>

" Toggle relative line numbers
nnoremap <F3> :set relativenumber!<CR>

" Enable type file detection. Vim will be able to try to detect the type of file is use.
filetype on

" Enable plugins and load plugin for the detected file type.
filetype plugin on

" Load an indent file for the detected file type.
filetype indent on

set paste

