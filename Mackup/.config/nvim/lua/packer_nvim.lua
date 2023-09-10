-- ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ --
-- ───────────────────────────────────────────────── --
--    Plugin:    packer.nvim
--    Github:    github.com/wbthomason/packer.nvim
-- ───────────────────────────────────────────────── --
-- ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ --

-- don't throw any error on first use by packer
local ok, packer = pcall(require, "packer")
if not ok then return end

-- plugins
return packer.startup {
	function()
		use { -- Packer managing itself
			'wbthomason/packer.nvim'
		}

		use { -- Speed up loading Lua modules in Neovim to improve startup time.
			'lewis6991/impatient.nvim'
		}

		use { -- Easily speed up your neovim startup time
			'nathom/filetype.nvim'
		}

		use { -- Theme/Colorscheme
			'bignimbus/pop-punk.vim',
			config = [[ require('plugins/pop-punk') ]]
		}

		use { -- Nvim Treesitter configurations and abstraction layer
			'nvim-treesitter/nvim-treesitter',
			requires = {
				'nvim-treesitter/playground', -- Treesitter playground integrated into Neovim
				opt = true
			},
			run = ':TSUpdate',
			config = [[ require('plugins/nvim-treesitter') ]],
		}

		use { -- Snippet Engine for Neovim written in Lua.
			'L3MON4D3/LuaSnip',
			requires = {
				"rafamadriz/friendly-snippets" -- Snippets collection for a set of different programming languages for faster development.
			},
			config = [[ require('plugins/LuaSnip') ]],
		}

		use { -- Find, Filter, Preview, Pick. All lua, all the time.
			'nvim-telescope/telescope.nvim',
			requires = {
				{'nvim-lua/popup.nvim'},
				{'nvim-lua/plenary.nvim'},
				{'nvim-telescope/telescope-fzf-native.nvim', run = 'make'} -- FZF sorter for telescope written in c
			},
			config = [[ require('plugins/telescope_nvim') ]],
		}

		use { -- lua `fork` of vim-web-devicons for neovim
			'kyazdani42/nvim-web-devicons',
			config = [[ require('plugins/nvim-web-devicons') ]],
		}

		use { -- The fastest Neovim colorizer.
			'norcalli/nvim-colorizer.lua',
			config = [[ require('plugins/nvim-colorizer') ]],
		}

		use { -- Maximizes and restores the current window in Vim
			'szw/vim-maximizer',
			config = [[ require('plugins/vim-maximizer') ]],
		}

		use { -- File Explorer
			'kyazdani42/nvim-tree.lua',
			config = [[ require('plugins/nvim-tree') ]],
		}

		use { -- Status Line
			'nvim-lualine/lualine.nvim',
			requires = { 'kyazdani42/nvim-web-devicons', opt = true },
			config = [[ require('plugins/lualine')]],
		}

		-- use { -- Github Co-Pilot
		-- 	'github/copilot.vim',
		-- 	config = [[ require('plugins/copilot') ]],
		-- }
		--
		use { -- Floating terminal window
			'numToStr/FTerm.nvim',
			config = [[ require('plugins/fterm_nvim') ]]
		}

		use { -- Jump/Hop to a location in buffer
			'phaazon/hop.nvim',
			config = [[ require('plugins/hop') ]]
		}

		use { -- Change current working directory to project's root directory
			'ygm2/rooter.nvim',
			config = [[ require('plugins/rooter_nvim') ]],
		}

		use { -- Align text with respect to a character
			'junegunn/vim-easy-align',
			config = [[ require('plugins/easy-align') ]]
		}

		use { -- Detect indentation style
			'Darazaki/indent-o-matic',
			config = [[ require('plugins/indent-o-matic') ]]
		}

		use { -- Bunch of nvim plugs
			'echasnovski/mini.nvim',
			config = [[ require('plugins/mini') ]]
		}
	end,

	config = {
		-- Move to lua dir so impatient.nvim can cache it
		compile_path = vim.fn.stdpath('config') .. '/plugin/packer_compiled.lua',

		display = {
			open_fn = function()
				return require('packer.util').float({border = 'single'})
			end
		}
	}
}

