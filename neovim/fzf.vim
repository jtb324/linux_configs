" fzf.vim
"
"     ____      ____       _
"    / __/___  / __/_   __(_)___ ___
"   / /_/_  / / /_ | | / / / __ `__ \
"  / __/ / /_/ __/_| |/ / / / / / / /
" /_/   /___/_/  (_)___/_/_/ /_/ /_/
"
"
" ---------------- fzf.vim --------------------------

"setting the path for fzf
set rtp+=/usr/local/opt/fzf

" This is the default option:
"   - Preview window on the right with 50% width
"   - CTRL-/ will toggle preview window.
" - Note that this array is passed as arguments to fzf#vim#with_preview function.
" - To learn more about preview window options, see `--preview-window` section of `man fzf`.
let g:fzf_layout = {'down': '40%'}
