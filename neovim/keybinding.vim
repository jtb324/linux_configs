" keybinding.vim
"
" --------------------Key Bindings------------------------

" Setting the leader key
let mapleader="\<SPACE>"

"Press f7 to activate spell checking, and f8 to turn it off
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

" 
" Remapping the keys to move between panes
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Remapping keys so that we you type the brackets it will automatically move
" cursor inbetween the two brackets
inoremap <> <><Left>
inoremap () ()<Left>
inoremap {} {}<Left>
inoremap [] []<Left>
inoremap "" ""<Left>
inoremap '' ''<Left>
inoremap `` ``<Left>

" opens the previous buffer while closing the current buffer
noremap <C-x> :bp<Bar>bd #<Cr>

" windows
nmap <LEADER>w- :sp<CR>
nmap <LEADER>w/ :vsp<CR>

" Toggle NerdTree window
nnoremap <silent><LEADER>n :NERDTreeToggle<CR>
" Open NerdTree and focus on current file
nnoremap <silent><LEADER>N :NERDTreeFind<CR>:NERDTreeFocus<CR>

" -------------------------Windows Keybindings------------------------
" Maximize window. <F3> also works.
nnoremap <silent><C-W>e :MaximizerToggle<CR>  
vnoremap <silent><C-W>e :MaximizerToggle<CR>gv
inoremap <silent><C-W>e <C-o>:MaximizerToggle<CR>


" redraw the screen and removes any search highlighting
nnoremap <silent> <C-c> :nohl<CR><C-c>

" bindings to move between tabs
nnoremap <A-Left> :tabprevious<CR>
nnoremap <A-Right> :tabnext<CR>

" TODO Fix this
" mapping a key to opening a terminal at the bottom of the screen
" nnoremap <Leader>\t :bottom terminal<CR>

