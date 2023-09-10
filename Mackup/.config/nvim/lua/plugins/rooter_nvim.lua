-- ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ --
-- ───────────────────────────────────────────────── --
--   Plugin:    rooter.nvim
--   Github:    github.com/ygm2/rooter.nvim
-- ───────────────────────────────────────────────── --
local g = vim.g

if not g.vscode then
-- CONFIGS
-- List of patterns(file or folder) which describes a directory as project root
g.rooter_pattern = {
	'.__nvim__.lua',
	'.__project__',
	'.git',
	'Makefile',
	'_darcs',
	'.hg',
	'.bzr',
	'.svn',
	'node_modules',
	'CMakeLists.txt',
	'.vscode',
	'.idea',
	'.gitignore',
}

-- Whether to change directory to outermost root directory or not
g.outermost_root = true
end
