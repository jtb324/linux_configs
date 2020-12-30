set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
source ~/.vimrc

" -------------------------------General Settings---------------------------
" turning on syntax
syntax on
" specific settings

set history=1000
set undolevels=1000
set hlsearch
set showcmd
set showmatch
set mouse=a
set wrap
set incsearch
set ignorecase
set smartcase
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

" Setting the color scheme
colorscheme forest-night

" enable true color support
set termguicolors

" --------------------------------Key Bindings-------------------------------

" Press f7 to activate spell checking, and f8 to turn it off
map <F7> <Esc>:setlocal spell spelllang=en_us<CR>
map <F8> <Esc>:setlocal nospell<CR>
map <C-s> :source ~/.config/nvim/init.vim<CR>
" keybinding for Vifm
map <C-b> :EditVifm .<CR>

"Adding a mapping so that you can move lines up and down
xnoremap K :move '<-2<CR>gv-gv
xnoremap J :move '>+1<CR>gv-gv

" Remapping the arrow keys so that they resize the split panes
nnoremap <Up> :resize +2<CR>
nnoremap <Down> :resize -2<CR>
nnoremap <Left> :vertical resize +2<CR>
nnoremap <Right> :vertical resize -2<CR>

" Remapping the keys to move between panes
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

if !has('nvim')
    set ttymouse=xterm2
endif

" -------------------------------Kite Autocomplete---------------------------
" MAKE KITE WORK FOR EVERY LANGUAGE
let g:kite_supported_languages = ['*']

" use tab to complete instead of super key <C-a>
let g:kit_tab_complete=1

" Setting parameter for completion and autocompletion
set completeopt+=menuone
set completeopt+=noselect

" making sure the preview window closes for the completion option
autocmd CompleteDone * if !pumvisible() | pclose | endif

" ------------------------------Status Bar---------------------------------
set statusline=
set statusline+=%#TabLine#
set statusline+=\ %M
set statusline+=\ %y
set statusline+=\ %r
set statusline+=\ %F
set statusline+=%= "adds items to the right side"
set statusline+=%#PmenuThumb#
set statusline+=\ %c:%l/%L
set statusline+=\ %p%%
set statusline+=\ [%n]


" -------------------------------Plugins-----------------------------------
call plug#begin('~/vimfiles/plugged')
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
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    Plug 'terryma/vim-multiple-cursors'
    Plug 'dense-analysis/ale'
    Plug 'airblade/vim-gitgutter'
    Plug 'rbong/vim-flog'
    Plug 'racer-rust/vim-racer'
    Plug 'msanders/snipmate.vim'
    Plug 'sainnhe/forest-night'
    Plug 'sheerun/vim-polyglot'
call plug#end()

" --------------------------Alacritty Specific------------------------------
" next line will make sure vim has no background so that it extends to the end
" of the terminal screen
"hi! Normal ctermbg=NONE guibg=NONE
"hi! NonText ctermbg=NONE guibg=NONE guifg=NONE ctermfg=NONE
