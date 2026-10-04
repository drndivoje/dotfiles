return {
  {
    "mrcjkb/rustaceanvim",
    version = "^5",
    lazy = false,
    dependencies = { "hrsh7th/cmp-nvim-lsp" },
    config = function()
      local shared = require("idoskovic.lsp_shared")
      vim.g.rustaceanvim = {
        server = {
          on_attach = shared.on_attach,
          capabilities = shared.capabilities(),
          default_settings = {
            ["rust-analyzer"] = {
              cargo = {
                allFeatures = true,
                loadOutDirsFromCheck = true,
              },
              checkOnSave = {
                command = "clippy",
              },
              procMacro = {
                enable = true,
              },
              inlayHints = {
                bindingModeHints = { enable = true },
                chainingHints = { enable = true },
                closureCaptureHints = { enable = true },
                parameterHints = { enable = true },
                typeHints = { enable = true },
              },
            },
          },
        },
      }
    end,
  },
}
