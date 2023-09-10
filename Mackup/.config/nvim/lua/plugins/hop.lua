-- CONFIGS
require'hop'.setup { keys = 'etovxqpdygfblzhckisuran' }

-- MAPPINGS
local keymap = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

keymap('n', 'hf', '<cmd>HopChar1<CR>', opts)
keymap('n', 'hF', '<cmd>HopChar2<CR>', opts)
keymap('n', 'hw', '<cmd>HopWord<CR>', opts)
keymap('n', 'hl', '<cmd>HopLineStart<CR>', opts)
keymap('n', 'h/', '<cmd>HopPattern<CR>', opts)

