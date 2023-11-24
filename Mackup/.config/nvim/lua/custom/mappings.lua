---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
  },
  v = {
    [">"] = { ">gv", "indent"},
  },
}

-- more keybinds!
local keymap	= vim.api.nvim_set_keymap
local cmd       = vim.cmd
local options	= {noremap = true, silent = true}
local silent	= {silent = true}
-- default leader
-- Undo & Redo Fix for Colemak layout
keymap('n', 'U', ":undo <CR>" , options)
keymap('n', 'R', ":redo <CR>", options)
keymap('n', 'u', "<Nop>", options)

-- move selected line(s) up or down
keymap('v', 'E', ":m '>+1<CR>gv=gv", options)
keymap('v', 'U', ":m '<-2<CR>gv=gv", options)

--[[
      easier indentation of code blocks
--]]
keymap('v', '<', '<gv', options)
keymap('v', '>', '>gv', options)

-- clear highlighted search results
keymap('n', '//', ':nohlsearch <CR>', silent)

-- toggle between relative line numbers and absolute line number
keymap('n', '<leader>n', ':set relativenumber! <CR>', silent)

-- scroll window up/down even when in insert mode
keymap('i', '<C-e>', '<ESC><C-e>', silent)
keymap('i', '<C-y>', '<ESC><C-y>', silent)
-- to scroll horizontally use <C-h>, <C-l> in normal mode

-- start of line
keymap('n', '0', '^', options)

-- new tab
keymap('n', 'tn', ':tabnew <CR>', options)
keymap('n', 'tq', ':tabclose <CR>', options)

return M
