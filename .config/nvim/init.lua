require("core")

-- lazy.nvim package manager
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)


-- Plugins

local plugin_whichkey = "folke/which-key.nvim"
local plugin_telescope = {
	'nvim-telescope/telescope.nvim', tag = '0.1.1',
	dependencies = { 'nvim-lua/plenary.nvim' }
}
local plugin_treesitter = {
	'nvim-treesitter/nvim-treesitter',
	config = function()
		vim.cmd("TSUpdate")
	end
}
local plugin_colorscheme = { 'rose-pine/neovim', name = 'rose-pine', config = {
	disable_italics = true
}}


local nvimplugins = {
	plugin_whichkey,
	plugin_telescope,
	plugin_colorscheme,
	plugin_treesitter
}

-- Plugins end

require("lazy").setup(nvimplugins)

-- Setting up colorscheme
vim.cmd.colorscheme("rose-pine")
vim.cmd.set("number relativenumber")

vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })

