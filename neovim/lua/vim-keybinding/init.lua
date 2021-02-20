local function createFloatingWin()
  local uiStats=vim.api.nvim_list_uis()[1]
  local width=uiStats.width;
  local height=uiStats.height;

  
  bufh = vim.api.nvim_create_buf(false, true)
  vim.api.nvim_buf_set_option(bufh, 'modifiable', true)
  --Creating keymap tables that will show the keybindings
  local windowKeybindings = {
    "Switch Window Right : <C-h>", 
    "Switch Window Left : <C-l>",
    "Switch Window Up : <C-k>",
    "Switch Window Down : <C-j>",
    "Close Window : <C-w>c",
    "Expand Window : <Space>We",
    "Resize Window Up: <Up>",
    "Resize Window Down: <Down>",
    "Resize Window Left: <Left>",
    "Resize Window Right: <Right>",
    "Split Window horizontally : <Space>w-",
    "Split Window vertically : <Space>w/",
    "Changing the split window to vertical layout : <Space>th", 
    "Changing the split window to horizontal layout : <Space>tk", 
   }

   local fileManager = {
    "open Vifm : <Space>b"
   }

   local fzfKeyMapping = {
     "Find File : <Space>i",
     "Find Regular Expression within file : <Space>iRg",
     "Find File with a Preview : <Space>iF",
     "Find File : <Space>i",
   }

   local terminalMapping = {
     "Toggle Terminal : <Space>`"
   }

   local luaKeybinding =  {
     "Open Lua Scratchpad : :Luapad"
   }

   local totalKeyBindings = {
     windowKeybindings, fileManager, fzfKeyMapping, terminalMapping, luaKeybinding
   }


  for k,v in pairs(totalKeyBindings) do
    for i,j in pairs(totalKeyBindings[k]) do 
      vim.api.nvim_buf_set_lines(bufh, 0, 0, false,{totalKeyBindings[k][i]})
    end
  end
  local win_height = height-10
  local win_width = height-10

  --created a border buffer
  local border_buf = vim.api.nvim_create_buf(false,true)

  local border_lines = { '╔' .. string.rep('═', win_width) .. '╗' }
  local middle_line = '║' .. string.rep(' ', win_width) .. '║'

  for i=1, win_height do
    table.insert(border_lines, middle_line)
  end

  table.insert(border_lines, '╚' .. string.rep('═', win_width) .. '╝')

  vim.api.nvim_buf_set_lines(border_buf, 0, -1, false, border_lines)

  local borderWin = vim.api.nvim_open_win(border_buf, true, {
    relative="editor",
    style="minimal",
    width=win_width+2,
    height=win_height+2, 
    col=math.ceil((width-win_width)/2 -1)-1,
    row=math.ceil((height-win_height)/2-1)-1
  })

  winId = vim.api.nvim_open_win(bufh, true, {
    relative="editor",
    style="minimal",
    width=win_width-10,
    height=win_height-10,
    col=math.ceil((width-win_width)/2 -1),
    row=math.ceil((height-win_height)/2-1)
  })
  print('<buffer>')
  vim.api.nvim_command('au BufWipeout <buffer> exe "silent bwipeout! "'..border_buf)
end
local function onResize()

  local uiStats=vim.api.nvim_list_uis()[1]
  local width=uiStats.width;
  
  local height=uiStats.height;
 
end
  

return {
  createFloatingWin=createFloatingWin,
  onResize=onResize
}
