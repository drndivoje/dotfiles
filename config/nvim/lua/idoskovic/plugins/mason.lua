return {
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "typescript-language-server", -- For TS/JS support
        "eslint-lsp",                 -- For ESLint support
        "prettier",                   -- For formatting
      },
    },
  },
}