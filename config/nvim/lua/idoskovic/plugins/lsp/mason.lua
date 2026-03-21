return {
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "typescript-language-server", -- For TS/JS support
        "eslint-lsp",                 -- For ESLint support
        "prettier",                   -- For formatting
        "gopls",                      -- Go language server
        "jdtls",                      -- Java language server
        "bash-language-server",       -- Bash language server
      },
    },
  },
}