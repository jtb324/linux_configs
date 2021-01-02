" statusbar.vim
"
" ------------------------------Status Bar---------------------------------
" set statusline=%<%f\ %h%m%r%{kite#statusline()}%=%-14.(%l,%c%V%)\ %P
set statusline=
set statusline+=%#TabLine#
set statusline+=\ %M
set statusline+=\ %y
set statusline+=\ %r
set statusline+=\ %F
set statusline+=%= "adds items to the right side
set statusline+=%#PmenuThumb#
set statusline+=%{kite#statusline()}
set statusline+=\ %c:%l/%L
set statusline+=\ %p%%
set statusline+=\ [%n]
