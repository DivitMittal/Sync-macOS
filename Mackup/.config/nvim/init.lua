local g = vim.g -- global vim variable

-- ───────────────────────────────────────────────── --
-- ────────────────❰ Leader Mapping ❱─────────────── --
-- mapping leader here. it will work for every mapped
g.mapleader = ';'
g.maplocalleader = '|'
-- ───────────────────────────────────────────────── --

-- ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ --
-- ━━━━━━━━━━━━━❰ Load/Source Configs ❱━━━━━━━━━━━━━ --

if not g.vscode then
    -- plugin config to improve start-up time.
    -- it should be always on top on init.lua file
    -- require('plugins/impatient_nvim') -- impatient needs to be setup before any other lua plugin is loaded so it is recommended you add the following near the start of your init
    require('plugins/filetype_nvim') -- Easily speed up your neovim startup time!
end

require('configs') -- plugin independent configs
require('mappings') -- plugin independent mappings

-- load/source PLUGINS CONFIGS
-- loading plugins and its configs are managed in seperate config file
-- ~/.config/nvim/lua/plugins/packer_nvim.lua
-- NOTE: laways load plugins at last
require('packer_nvim')
