fun! DisplayKeyMap()
   lua for k in pairs(package.loaded) do if k:match("^key%-keybinding") then package.loaded[k] = nil end end
   lua require("vim-keybinding").createFloatingWin()
endfun

augroup DisplayKeyMap
    autocmd!
    autocmd VimResized * :lua require("vim-keybinding").onResize()
augroup END
