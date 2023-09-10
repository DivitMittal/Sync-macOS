-- ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ --
-- ━━━━━━━━━━━━━❰ Plugin-Independent Configs ❱━━━━━━━━━━━━━ --
-- ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ --

--[[
	 NOTE:
		every configs in this file are independent of any plugin
		configs for plugins are in "lua/plugins" directory and each plugin has
		it's own config file. some settings are already default in neovim so you
		don't need to define explicitly but it won't make any difference
--]]

local exec = vim.api.nvim_exec -- execute Vimscript
local set  = vim.opt -- global options
local cmd  = vim.cmd -- execute Vim commands
local fn   = vim.fn    -- call Vim functions
local g    = vim.g             -- global variables
-- local b     = vim.bo            -- buffer-scoped options
-- local w     = vim.wo            -- windows-scoped options

if not g.vscode then
    set.termguicolors = true -- Enable GUI colors for the terminal to get truecolor
    set.list          = true -- show whitespace
    set.listchars     = {
        nbsp          = '␣',
        extends       = '»',
        precedes      = '«',
        tab           = '|-',
        trail         = '•',
        space         = '·',
        eol           = 'ꜜ',
    }

    set.fillchars = {
        diff      = '∙',
        eob       = ' ', -- NO-BREAK SPACE (U+00A0, UTF-8: C2 A0) to suppress ~ at EndOfBuffer
        fold      = '·',
        vert      = ' ', -- remove ugly vertical lines on window division
    }

    if root then
        set.shada        = '' -- Don't create root-owned files.
        set.shadafile    = 'NONE'
    else
        local backup_dir = fn.expand('~/.cache/nvim')
        set.backup       = false -- make backups before writing
        set.undofile     = false -- persistent undos - undo after you re-open the file
        set.writebackup  = false -- Make backup before overwriting the current buffer
        set.backupcopy   = 'yes' -- Overwrite the original backup file
        set.directory    = backup_dir .. '/swap' -- directory to place swap files in
        set.backupdir    = backup_dir .. '/backedUP' -- where to put backup files
        set.undodir      = backup_dir .. '/undos' -- where to put undo files
        set.viewdir      = backup_dir .. '/view' -- where to store files for :mkview
        set.shada        = "'100,<50,f50,n~/.cache/nvim/shada/shada"
    end

    set.wrap           = false -- automatically wrap on load
    set.breakindent    = true -- automatically break lines on load with respect to indent
    -- set.cursorcolumn   = true -- highlight current column
    -- set.cursorline     = true -- highlight current line
    set.number         = true -- show line numbers
    set.relativenumber = true -- show relative line number
    set.mouse          = 'a'		-- turn on mouse interaction
    set.laststatus     = 2 -- always show status line
    set.wildignore     = set.wildignore + '*.o,*.rej,*.so' -- patterns to ignore during file-navigation
    --  set.scrolloff = 1 -- when scrolling, keep cursor 1 lines away from screen border
    --  set.sidescrolloff = 2 -- keep 30 columns visible left and right of the cursor at all times
    set.backspace      = 'indent,start,eol' -- make backspace behave like normal again
    set.lazyredraw     = true -- faster scrolling
    set.expandtab      = true -- expand tabs into spaces
    set.updatetime     = 1000 -- CursorHold interval
    set.completeopt    = 'menuone,noselect,noinsert' -- completion options
    set.inccommand     = 'split' -- live preview of :s results
	set.tabstop        = 4 -- actual spaces which are considered a tab
	set.smarttab       = true -- <tab>/<BS> indent/dedent in leading whitespace

	-- ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ --
	-- ━━━━━━━━━━━━━━━━━━━❰ Automate ❱━━━━━━━━━━━━━━━━━━━━ --

	-- highlight on yank
	exec([[
		augroup YankHighlight
			autocmd!
			autocmd TextYankPost * silent! lua vim.highlight.on_yank{higroup="IncSearch", timeout=500, on_visual=true}
		augroup end
	]], false)

	-- jump to the last position when reopening a file
	cmd([[
		if has("autocmd")
			au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
		endif
	]])

	-- remove whitespace on save
	cmd([[au BufWritePre * :%s/\s\+$//e]])

	-- don't auto commenting new lines
	cmd([[au BufEnter * set fo-=c fo-=r fo-=o]])
end

set.clipboard   = set.clipboard + "unnamedplus" -- copy & paste
set.showmatch   = true -- show the matching part of the pair for [] {} and ()

set.incsearch   = true -- incremental search
set.hlsearch    = true -- highlighted search results
set.ignorecase  = true -- ignore case sensetive while searching
set.smartcase   = true -- being smart about ignoring case when using ignorecase

set.shiftround  = true -- round shiftwidth to the nearest multiple of shiftwidth
set.shiftwidth  = 4 -- spaces per tab (when shifting), when using the >> or << commands, shift lines by 4 spaces

set.softtabstop = 4 -- how many spaces are inserted and delted when pressing tab and bs respectively
set.smartindent = true -- indent the current line according to the previous line
set.autoindent  = true -- maintain indent of current line

set.shell       = '/bin/bash' -- shell to use for `!`, `:!`, `system()` etc.

set.splitbelow  = true -- open horizontal splits below current window
set.splitright  = true -- open vertical splits to the right of the current window

