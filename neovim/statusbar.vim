" statusbar.vim
"
" ------------------------------Status Bar---------------------------------
" set statusline=%<%f\ %h%m%r%{kite#statusline()}%=%-14.(%l,%c%V%)\ %P
" Adding git branch to the status bar
function! GitBranch()
  return system("git rev-parse --abbrev-ref HEAD 2>/dev/null | tr -d '\n'")
endfunction

function! StatuslineGit()
  let l:branchname = GitBranch()
  return strlen(l:branchname) > 0?'  '.l:branchname.' ':''
endfunction

set statusline= 
set statusline=%2*\%{StatuslineGit()}
set statusline+=%#TabLine#
set statusline+=\ %M
set statusline+=\ %y
set statusline+=\ %r
set statusline+=\ %f
set statusline+=%= "adds items to the right side
set statusline+=%1*\ %{kite#statusline()}
set statusline+=%1*\ \|
set statusline+=%1*\ %c:%l/%L
set statusline+=%1*\ %p%%
set statusline+=%1*\ [%n]

hi StatusLineNC gui=reverse 
hi User1 guifg=#000000 guibg=#bababa
hi User2 guifg=#ffffff guibg=#4b4b4b gui=BOLD

