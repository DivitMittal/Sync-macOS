-- CONFIGS
if not vim.g.vscode then
    require('indent-o-matic').setup {
        -- The values indicated here are the defaults
        -- Number of lines without indentation before giving up (use -1 for infinite)
        max_lines = 2048,
        -- Space indentations that should be detected
        standard_widths = { 2, 4, 8 },
    }
end

