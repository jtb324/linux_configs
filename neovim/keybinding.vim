" keybinding.vim
"
" --------------------Key Bindings------------------------

" Setting the leader key
let mapleader="\<SPACE>"

"Press f7 to activate spell checking, and f8 to turn it off
map <F7> <Esc>:setlocal spell spelllang=en_us<CR>
map <F8> <Esc>:setlocal nospell<CR>
map <C-z> :source ~/.config/nvim/init.vim<CR>
" keybinding for Vifm
map <LEADER>b :EditVifm .<CR>

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

" ----------------------fzf keybinding-------------------
map <LEADER>i :FZF<CR>
map <LEADER>iRg :Rg<CR>
map <LEADER>iF :Files<CR>
map <LEADER>iBl :BLines<CR>

" Setting different keys for splitting panes that follow my vim
" bindings to split the pane
let g:fzf_action = {
    \ 'ctrl-i': 'split',
    \ 'ctrl-v': 'vsplit'}
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
nnoremap <silent><LEADER>We :MaximizerToggle<CR>  
vnoremap <silent><LEADER>We :MaximizerToggle<CR>gv
inoremap <silent><LEADER>We <C-o>:MaximizerToggle<CR>


" redraw the screen and removes any search highlighting
nnoremap <silent> <C-c> :nohl<CR><C-c>

" bindings to move between tabs
nnoremap <A-Left> :tabprevious<CR>
nnoremap <A-Right> :tabnext<CR>

" keybinding to change 2 split windows from vert to horiz or horiz to vert
map <Leader>th <C-w>t<C-w>H
map <Leader>tk <C-w>t<C-w>K
" TODO Fix this
" mapping a key to opening a terminal at the bottom of the screen
" nnoremap <Leader>\t :bottom terminal<CR>

