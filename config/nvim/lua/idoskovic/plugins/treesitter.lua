return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
      require("nvim-treesitter.configs").setup({
        ensure_installed = {
          "java",
          "go",
          "gomod",
          "gowork",
          "typescript",
          "javascript",
          "tsx",
          "bash",
          "lua",
          "vim",
          "vimdoc",
          "json",
          "yaml",
          "markdown",
          "markdown_inline",
        },
        auto_install = true,
        highlight = {
          enable = true,
        },
        indent = {
          enable = true,
        },
      })
    end,
  },
}
