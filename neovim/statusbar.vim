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
set statusline=%{StatuslineGit()}
set statusline+=%#TabLine#
set statusline+=\ %M
set statusline+=\ %y
set statusline+=\ %r
set statusline+=\ %f
set statusline+=%= "adds items to the right side
set statusline+=%#PmenuThumb#
set statusline+=%{kite#statusline()}
set statusline+=\ %c:%l/%L
set statusline+=\ %p%%
set statusline+=\ [%n]
