local lsp = require('lsp-zero').preset({})

lsp.on_attach(function(client, bufnr)
  lsp.default_keymaps({buffer = bufnr})
end)

-- (Optional) Configure lua language server for neovim
require('lspconfig').lua_ls.setup(lsp.nvim_lua_ls())

-- https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md
lsp.setup_servers({
    'tsserver',
    'eslint',
    'rust_analyzer',
    'java_language_server',
    'clangd',
    'bashls',
    'gopls',
    'jsonls',
    'cmake'
})

lsp.on_attach(function(client, bufnr)
	local opts = {buffer = bufnr, remap = false}

	vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
	vim.keymap.set("n", "gi", function() vim.lsp.buf.implementation() end, opts)
	vim.keymap.set("n", "go", function() vim.lsp.buf.type_definition() end, opts)
	vim.keymap.set("n", "gs", function() vim.lsp.buf.signature_help() end, opts)
	vim.keymap.set("n", "gr", function() vim.lsp.buf.references() end, opts)
	vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
end)

lsp.setup()
