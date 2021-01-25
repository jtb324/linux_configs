"    ____      _ __
"   /  _/___  (_) /_    __(_)___ ___
"   / // __ \/ / __/\  / / / __ `__ \
" _/ // / / / / /__\ \/ / / / / / / /
"/___/_/ /_/_/\__(_)___/_/_/ /_/ /_/


" -------------------------------General Settings---------------------------
set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
" turning on syntax
syntax on
" specific settings
set scrolloff=7
set history=1000
set undolevels=1000
set encoding=UTF-8
set hlsearch
set showcmd
set showmatch
set mouse=a
set wrap
set incsearch
set ignorecase
set smartcase
set nocompatible
set autowrite
set history=100
set number
set background=dark
set ai
set si
set ru
set sc
set smarttab
set expandtab
set tabstop=4
set softtabstop=4
set backspace=indent,eol,start
set noswapfile
set cursorline
set guifont=DroidSansMono\ Nerd\ Font:h12

let g:gitgutter_terminal_reports_focus=0

let g:gitgutter_git_executable = '/usr/local/bin/git'
" Making it where new windows open on the top and bottom
set splitbelow
set splitright

" Allowing NERDTree to show hidden files
let NERDTreeShowHidden=1

let g:webdevicons_enable=1

" Setting the color scheme
colorscheme ayu

" enable true color support
set termguicolors

" setting to close vim if nerdtree is the last window
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
let g:webdevicons_enable_nerdtree = 1
" Adding devicons to the nerdtree

" --------------------------------Ascii Art----------------------------------
let g:startify_custom_header = [
\ '                            _           ',
\ '     ____  ___  ____ _   __(_)___ ___   ',
\ '    / __ \/ _ \/ __ \ | / / / __ `__ \  ',
\ '   / / / /  __/ /_/ / |/ / / / / / / /  ',
\ '  /_/ /_/\___/\____/|___/_/_/ /_/ /_/   ',
\ '',
\ '',
\ ]

" --------------------------------Key Bindings-------------------------------
source ~/.config/nvim/keybinding.vim

if !has('nvim')
    set ttymouse=xterm2
endif

" -------------------------------Kite Autocomplete---------------------------
" source ~/.config/nvim/kite.vim
" MAKE KITE WORK FOR EVERY LANGUAGE
let g:kite_supported_languages = ['*']

" use tab to complete instead of super key <C-a>
let g:kite_tab_complete=1

" Setting parameter for completion and autocompletion
set completeopt+=menuone
set completeopt+=noselect

" making sure the preview window closes for the completion option
autocmd CompleteDone * if !pumvisible() | pclose | endif 
" ------------------------------Prettier settings--------------------------
" source ~/.config/nvim/prettier.vim 
" ------------------------------Neoformat settings-------------------------
source ~/.config/nvim/neoformat.vim

" ------------------------------ Fzf.vim ---------------------------------

source ~/.config/nvim/fzf.vim

" ------------------------------Status Bar---------------------------------
source ~/.config/nvim/statusbar.vim

" ------------------------IndentLine Settings------------------------------

source ~/.config/nvim/indentLine.vim 
" -------------------------------Plugins-----------------------------------
call plug#begin('~/vimfiles/plugged')
    Plug 'rhysd/vim-clang-format'
    Plug 'airblade/vim-rooter'
    Plug 'kiteco/vim-plugin'
    Plug 'ayu-theme/ayu-vim'
    Plug 'sbdchd/neoformat'
    Plug 'cjrh/vim-conda'
    Plug 'hdima/python-syntax'
    Plug 'sakshamgupta05/vim-todo-highlight'
    Plug 'jmcantrell/vim-virtualenv'
    Plug 'vim-scripts/pylint.vim'
    Plug 'fatih/vim-go'
    Plug 'sainnhe/forest-night'
    Plug 'tpope/vim-commentary'
    Plug 'szw/vim-maximizer'
    Plug 'norcalli/nvim-colorizer.lua'
    Plug 'junegunn/fzf.vim'
    Plug 'PhilRunninger/nerdtree-visual-selection'
    Plug 'Shougo/vimproc.vim', {'do' : 'make'}
    Plug 'mhinz/vim-startify'
    Plug 'vifm/vifm.vim'
    Plug 'nelstrom/vim-markdown-folding'
    Plug 'tpope/vim-markdown'
    Plug 'tpope/vim-fugitive'
    Plug 'mattn/emmet-vim'
    Plug 'dracula/vim'
    Plug 'kien/rainbow_parentheses.vim'
    Plug 'rust-lang/rust.vim'
    Plug 'jiangmiao/auto-pairs'
    Plug 'alvan/vim-closetag'
    Plug 'terryma/vim-multiple-cursors'
    Plug 'dense-analysis/ale'
    Plug 'airblade/vim-gitgutter'
    Plug 'rbong/vim-flog'
    Plug 'racer-rust/vim-racer'
    Plug 'arzg/vim-rust-syntax-ext'
    Plug 'msanders/snipmate.vim'
    Plug 'sainnhe/forest-night'
    Plug 'sheerun/vim-polyglot'
    Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
    Plug 'preservim/nerdtree'
    Plug 'ryanoasis/vim-devicons'
    Plug 'tpope/vim-surround'
    Plug 'tpope/vim-eunuch'
call plug#end()
lua require'colorizer'.setup()
" --------------------------Alacritty Specific------------------------------
" next line will make sure vim has no background so that it extends to the end
" of the terminal screen
"hi! Normal ctermbg=NONE guibg=NONE
"hi! NonText ctermbg=NONE guibg=NONE guifg=NONE ctermfg=NONE
