" vim_which_key.vim
"
"
" -------------------Vim-Which-Key Settings-------------

" vim-which-key keybinding
call which_key#register('<Space>', "g:which_key_map")
nnoremap <silent> <leader> :WhichKey '<Space>'<CR>
nnoremap <silent> <leader> :<c-u>WhichKey '<Space>'<CR>
nnoremap <silent> <leader> :<c-u>WhichKeyVisual  '<Space>'<CR>

let g:which_key_map = {}
let g:mapleader = "\<Space>"
let g:maplocalleader = ','

" By default timeoutlen is 1000 ms
set timeoutlen=500

let g:which_key_map.f = { 'name' : '+file' }

let g:which_key_map.s = { 's': ['<C-S>s', 'source file'] }
let g:which_key_map.w = {
      \ 'name' : '+windows' ,
      \ 'w' : ['<C-W>w'     , 'other-window']          ,
      \ 'd' : ['<C-W>c'     , 'delete-window']         ,
      \ 'w-' : ['<C-W>w-'     , 'split-window-below']    ,
      \ 'w/' : ['<C-W>w/'     , 'split-window-right']    ,
      \ '2' : ['<C-W>v'     , 'layout-double-columns'] ,
      \ 'x' : ['<C-W>x'    , 'rotate-window-with-neighboring'],
      \ 'J' : [':resize +5'  , 'expand-window-below']   ,
      \ 'L' : ['<C-W>5>'    , 'expand-window-right']   ,
      \ 'K' : [':resize -5'  , 'expand-window-up']      ,
      \ '=' : ['<C-W>='     , 'balance-window']        ,
      \ 's' : ['<C-W>s'     , 'split-window-below']    ,
      \ 'v' : ['<C-W>v'     , 'split-window-below']    ,
      \ '?' : ['Windows'    , 'fzf-window']            ,
      \ 'r' : ['<C-W>r'     , 'rotate-windows-clockwise'],
      \ 'R' : ['<C-W>R'     , 'rotate-windows-counterclockwise'],
      \ 'e' : ['<C-W>e'     , 'maximize-window']
      \}

let g:which_key_map.c = {
      \ 'c' : ['<C-c>'      , 'remove-search-highlighting'],
      \}
