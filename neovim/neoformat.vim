" neoformat.vim

" -------------------------NeoFormat Settings------------------------------
" making it format on savw
augroup fmt
  autocmd!
  autocmd BufWritePre * undojoin | Neoformat
augroup END

