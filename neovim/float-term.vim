" settings for vim termfloat  

"making the terminal appear at the bottom
" let g:floaterm_wintype="split"
" making the terminal be small. The defaul is 0.6 of the total column value
let g:floaterm_height=0.6

hi Floaterm guibg=#424242
hi Floatermorder guifg=black

" setting a key mapping to toggle the terminal
noremap  <leader>`  :FloatermToggle<CR>
noremap! <leader>`  <Esc>:FloatermToggle<CR>
tnoremap <leader>`  <C-\><C-n>:FloatermToggle<CR>
