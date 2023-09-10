-- CONFIGS
if not vim.g.vscode then
    vim.g.copilot_no_tab_map = true
    local keymap = vim.api.nvim_set_keymap -- keymap variables
    keymap("i", "<Right>", 'copilot#Accept("<CR>")', { silent = true, expr = true })
end

