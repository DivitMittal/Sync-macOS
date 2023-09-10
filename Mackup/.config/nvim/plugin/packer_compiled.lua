-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

_G._packer = _G._packer or {}
_G._packer.inside_compile = true

local time
local profile_info
local should_profile = false
if should_profile then
  local hrtime = vim.loop.hrtime
  profile_info = {}
  time = function(chunk, start)
    if start then
      profile_info[chunk] = hrtime()
    else
      profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
    end
  end
else
  time = function(chunk, start) end
end

local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end
  if threshold then
    table.insert(results, '(Only showing plugins that took longer than ' .. threshold .. ' ms ' .. 'to load)')
  end

  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/Users/divitmittal/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/Users/divitmittal/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/Users/divitmittal/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/Users/divitmittal/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/Users/divitmittal/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["FTerm.nvim"] = {
    config = { " require('plugins/fterm_nvim') " },
    loaded = true,
    path = "/Users/divitmittal/.local/share/nvim/site/pack/packer/start/FTerm.nvim",
    url = "https://github.com/numToStr/FTerm.nvim"
  },
  LuaSnip = {
    config = { " require('plugins/LuaSnip') " },
    loaded = true,
    path = "/Users/divitmittal/.local/share/nvim/site/pack/packer/start/LuaSnip",
    url = "https://github.com/L3MON4D3/LuaSnip"
  },
  ["filetype.nvim"] = {
    loaded = true,
    path = "/Users/divitmittal/.local/share/nvim/site/pack/packer/start/filetype.nvim",
    url = "https://github.com/nathom/filetype.nvim"
  },
  ["friendly-snippets"] = {
    loaded = true,
    path = "/Users/divitmittal/.local/share/nvim/site/pack/packer/start/friendly-snippets",
    url = "https://github.com/rafamadriz/friendly-snippets"
  },
  ["hop.nvim"] = {
    config = { " require('plugins/hop') " },
    loaded = true,
    path = "/Users/divitmittal/.local/share/nvim/site/pack/packer/start/hop.nvim",
    url = "https://github.com/phaazon/hop.nvim"
  },
  ["impatient.nvim"] = {
    loaded = true,
    path = "/Users/divitmittal/.local/share/nvim/site/pack/packer/start/impatient.nvim",
    url = "https://github.com/lewis6991/impatient.nvim"
  },
  ["indent-o-matic"] = {
    config = { " require('plugins/indent-o-matic') " },
    loaded = true,
    path = "/Users/divitmittal/.local/share/nvim/site/pack/packer/start/indent-o-matic",
    url = "https://github.com/Darazaki/indent-o-matic"
  },
  ["lualine.nvim"] = {
    config = { " require('plugins/lualine')" },
    loaded = true,
    path = "/Users/divitmittal/.local/share/nvim/site/pack/packer/start/lualine.nvim",
    url = "https://github.com/nvim-lualine/lualine.nvim"
  },
  ["mini.nvim"] = {
    config = { " require('plugins/mini') " },
    loaded = true,
    path = "/Users/divitmittal/.local/share/nvim/site/pack/packer/start/mini.nvim",
    url = "https://github.com/echasnovski/mini.nvim"
  },
  ["nvim-colorizer.lua"] = {
    config = { " require('plugins/nvim-colorizer') " },
    loaded = true,
    path = "/Users/divitmittal/.local/share/nvim/site/pack/packer/start/nvim-colorizer.lua",
    url = "https://github.com/norcalli/nvim-colorizer.lua"
  },
  ["nvim-tree.lua"] = {
    config = { " require('plugins/nvim-tree') " },
    loaded = true,
    path = "/Users/divitmittal/.local/share/nvim/site/pack/packer/start/nvim-tree.lua",
    url = "https://github.com/kyazdani42/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    config = { " require('plugins/nvim-treesitter') " },
    loaded = true,
    path = "/Users/divitmittal/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-web-devicons"] = {
    config = { " require('plugins/nvim-web-devicons') " },
    loaded = true,
    path = "/Users/divitmittal/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/kyazdani42/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/Users/divitmittal/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  playground = {
    loaded = false,
    needs_bufread = true,
    path = "/Users/divitmittal/.local/share/nvim/site/pack/packer/opt/playground",
    url = "https://github.com/nvim-treesitter/playground"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/Users/divitmittal/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["pop-punk.vim"] = {
    config = { " require('plugins/pop-punk') " },
    loaded = true,
    path = "/Users/divitmittal/.local/share/nvim/site/pack/packer/start/pop-punk.vim",
    url = "https://github.com/bignimbus/pop-punk.vim"
  },
  ["popup.nvim"] = {
    loaded = true,
    path = "/Users/divitmittal/.local/share/nvim/site/pack/packer/start/popup.nvim",
    url = "https://github.com/nvim-lua/popup.nvim"
  },
  ["rooter.nvim"] = {
    config = { " require('plugins/rooter_nvim') " },
    loaded = true,
    path = "/Users/divitmittal/.local/share/nvim/site/pack/packer/start/rooter.nvim",
    url = "https://github.com/ygm2/rooter.nvim"
  },
  ["telescope-fzf-native.nvim"] = {
    loaded = true,
    path = "/Users/divitmittal/.local/share/nvim/site/pack/packer/start/telescope-fzf-native.nvim",
    url = "https://github.com/nvim-telescope/telescope-fzf-native.nvim"
  },
  ["telescope.nvim"] = {
    config = { " require('plugins/telescope_nvim') " },
    loaded = true,
    path = "/Users/divitmittal/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["vim-easy-align"] = {
    config = { " require('plugins/easy-align') " },
    loaded = true,
    path = "/Users/divitmittal/.local/share/nvim/site/pack/packer/start/vim-easy-align",
    url = "https://github.com/junegunn/vim-easy-align"
  },
  ["vim-maximizer"] = {
    config = { " require('plugins/vim-maximizer') " },
    loaded = true,
    path = "/Users/divitmittal/.local/share/nvim/site/pack/packer/start/vim-maximizer",
    url = "https://github.com/szw/vim-maximizer"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: mini.nvim
time([[Config for mini.nvim]], true)
 require('plugins/mini') 
time([[Config for mini.nvim]], false)
-- Config for: vim-easy-align
time([[Config for vim-easy-align]], true)
 require('plugins/easy-align') 
time([[Config for vim-easy-align]], false)
-- Config for: nvim-colorizer.lua
time([[Config for nvim-colorizer.lua]], true)
 require('plugins/nvim-colorizer') 
time([[Config for nvim-colorizer.lua]], false)
-- Config for: telescope.nvim
time([[Config for telescope.nvim]], true)
 require('plugins/telescope_nvim') 
time([[Config for telescope.nvim]], false)
-- Config for: lualine.nvim
time([[Config for lualine.nvim]], true)
 require('plugins/lualine')
time([[Config for lualine.nvim]], false)
-- Config for: nvim-tree.lua
time([[Config for nvim-tree.lua]], true)
 require('plugins/nvim-tree') 
time([[Config for nvim-tree.lua]], false)
-- Config for: FTerm.nvim
time([[Config for FTerm.nvim]], true)
 require('plugins/fterm_nvim') 
time([[Config for FTerm.nvim]], false)
-- Config for: pop-punk.vim
time([[Config for pop-punk.vim]], true)
 require('plugins/pop-punk') 
time([[Config for pop-punk.vim]], false)
-- Config for: nvim-treesitter
time([[Config for nvim-treesitter]], true)
 require('plugins/nvim-treesitter') 
time([[Config for nvim-treesitter]], false)
-- Config for: indent-o-matic
time([[Config for indent-o-matic]], true)
 require('plugins/indent-o-matic') 
time([[Config for indent-o-matic]], false)
-- Config for: LuaSnip
time([[Config for LuaSnip]], true)
 require('plugins/LuaSnip') 
time([[Config for LuaSnip]], false)
-- Config for: nvim-web-devicons
time([[Config for nvim-web-devicons]], true)
 require('plugins/nvim-web-devicons') 
time([[Config for nvim-web-devicons]], false)
-- Config for: vim-maximizer
time([[Config for vim-maximizer]], true)
 require('plugins/vim-maximizer') 
time([[Config for vim-maximizer]], false)
-- Config for: rooter.nvim
time([[Config for rooter.nvim]], true)
 require('plugins/rooter_nvim') 
time([[Config for rooter.nvim]], false)
-- Config for: hop.nvim
time([[Config for hop.nvim]], true)
 require('plugins/hop') 
time([[Config for hop.nvim]], false)

_G._packer.inside_compile = false
if _G._packer.needs_bufread == true then
  vim.cmd("doautocmd BufRead")
end
_G._packer.needs_bufread = false

if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
