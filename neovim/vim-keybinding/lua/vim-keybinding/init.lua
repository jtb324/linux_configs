local function createFloatingWin()
  local uiStats=vim.api.nvim_list_uis()[1]
  local width=uiStats.width;
  local height=uiStats.height;

  print(width,height)
  -- local nkeyBindings = vim.api.nvim_get_keymap("n")
  
  local bufh = vim.api.nvim_create_buf(false, true)
  vim.api.nvim_buf_set_option(bufh, 'modifiable', true)
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

  local winId = vim.api.nvim_open_win(bufh, true, {
    relative="editor",
    width=width-10,
    height=height-10,
    col=2,
    row=2
  })


end
local function onResize()

  local uiStats=vim.api.nvim_list_uis()[1]
  local width=uiStats.width;
  
  local height=uiStats.height;

  print(width,height)
  
end
  

  -- get the editor's max width and height
  -- local width = vim.api.nvim_get_option("columns")
  -- local height = vim.api.nvim_get_option("lines")

  -- -- create a new, scratch buffer, for fzf
  -- local buf = vim.api.nvim_create_buf(false, true)
  -- vim.api.nvim_buf_set_option(buf, 'buftype', 'nofile')

  -- -- if the editor is big enough
  -- if (width > 150 or height > 35) then
  --   -- fzf's window height is 3/4 of the max height, but not more than 30
  --   local win_height = math.min(math.ceil(height * 3 / 4), 30)
  --   local win_width

  --   -- if the width is small
  --   if (width < 150) then
  --     -- just subtract 8 from the editor's width
  --     win_width = math.ceil(width - 8)
  --   else
  --     -- use 90% of the editor's width
  --     win_width = math.ceil(width * 0.9)
  --   end

  --   -- settings for the fzf window
  --   local opts = {
  --     relative = "editor",
  --     width = win_width,
  --     height = win_height,
  --     row = math.ceil((height - win_height) / 2),
  --     col = math.ceil((width - wn_width) / 2)
  --   }

  --   -- create a new floating window, centered in the editor
  --   local win = vim.api.nvim_open_win(buf, true, opts)
  -- end


return {
  createFloatingWin=createFloatingWin,
  onResize=onResize
}
