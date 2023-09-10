-- MAPPINGS
local keymap = vim.api.nvim_set_keymap
local opts = {noremap = true, silent = true}

keymap('v', 'ea', ':EasyAlign<CR>', opts)

