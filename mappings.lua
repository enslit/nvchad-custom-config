---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
    ["<leader>qf"] = {
      function ()
        vim.lsp.buf.code_action({ apply = true })
      end,
      "Quickfix",
      opts = { noremap = true, silent = true } },

  },
}

M.tabufline = {
  n = {
    ["<leader>X"] = {
      function()
        require("nvchad_ui.tabufline").closeAllBufs()
      end,
      "Close all buffers",
    },
  }
}

return M
