local status_ok, lsp_installer = pcall(require, "nvim-lsp-installer")
if not status_ok then
	return
end

-- Register a handler that will be called for all installed servers.
-- Alternatively, you may also register handlers on specific server instances instead (see example below).
lsp_installer.on_server_ready(function(server)
	local opts = {
		on_attach = require("user.lsp.handlers").on_attach,
		capabilities = require("user.lsp.handlers").capabilities,
	}

	 if server.name == "jsonls" then
	 	local jsonls_opts = require("user.lsp.settings.jsonls")
	 	opts = vim.tbl_deep_extend("force", jsonls_opts, opts)
	 end

     if server.name == "lua_ls" then
         local lua_ls_opts = require("user.lsp.settings.lua_ls")
         opts = vim.tbl_deep_extend("force", lua_ls_opts, opts)
     end

	 if server.name == "pylsp" then
	 	local pylsp_opts = require("user.lsp.settings.pylsp")
	 	opts = vim.tbl_deep_extend("force", pylsp_opts, opts)
	 end

     if server.name == "clangd" then
       local clangd_opts = require("user.lsp.settings.clangd")
       opts = vim.tbl_deep_extend("force", clangd_opts, opts)
     end

     if server.name == "rust-analyzer" then
       local rust_opts = require("user.lsp.settings.rust_analyzer")
       opts = vim.tbl_deep_extend("force", rust_opts, opts)
     end

	-- This setup() function is exactly the same as lspconfig's setup function.
	-- Refer to https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md
	server:setup(opts)
end)

