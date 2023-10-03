local M = {}

function M.setup()
  local lsp_zero = require "lsp-zero"
  vim.print "in setup"
  lsp_zero.on_attach(function(client, bufnr)
    -- see :help lsp-zero-keybindings
    -- to learn the available actions
    lsp_zero.default_keymaps { buffer = bufnr }
  end)
  require("lspconfig").lua_ls.setup()
end

return M
