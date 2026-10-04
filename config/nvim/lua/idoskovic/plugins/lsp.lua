-- LSP for Go and Bash, using the Neovim 0.11+ vim.lsp.config / vim.lsp.enable API.
-- nvim-lspconfig only provides the default server configs; mason installs the binaries.
local servers = { "gopls", "bashls" }

return {
  {
    "williamboman/mason-lspconfig.nvim",
    dependencies = {
      { "williamboman/mason.nvim", opts = {} },
      "neovim/nvim-lspconfig",
      "hrsh7th/cmp-nvim-lsp",
    },
    config = function()
      local shared = require("idoskovic.lsp_shared")

      vim.lsp.config("*", {
        capabilities = shared.capabilities(),
        on_attach = shared.on_attach,
      })

      vim.lsp.config("gopls", {
        settings = {
          gopls = {
            gofumpt = true,
            staticcheck = true,
            usePlaceholders = true,
            analyses = {
              unusedparams = true,
              unusedwrite = true,
            },
          },
        },
      })

      require("mason-lspconfig").setup({
        ensure_installed = servers,
        -- only enable these, even if mason has other servers installed
        automatic_enable = servers,
      })

      vim.diagnostic.config({
        virtual_text = true,
        signs = true,
        underline = true,
        update_in_insert = false,
        severity_sort = true,
      })
    end,
  },
}
