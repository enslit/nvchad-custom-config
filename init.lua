require('base')

local autocmd = vim.api.nvim_create_autocmd

-- Auto resize panes when resizing nvim window

autocmd("VimResized", {
  pattern = "*",
  command = "tabdo wincmd =",
})

local has = vim.fn.has
local is_mac = has "macunix"
local is_linux = has "unix"
local is_win = has "win32"
local is_wsl = has "wsl"

if is_mac == 1 then
  require('enslit.macos')
end
if is_linux == 1 then
  require('enslit.linux')
end
if is_win == 1 then
  require('enslit.windows')
end
if is_wsl == 1 then
  require('enslit.wsl')
end
