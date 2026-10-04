return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    lazy = false,
    priority = 1000,
    config = function()
      require("catppuccin").setup({
        flavour = "latte", -- light
        integrations = {
          cmp = true,
          gitsigns = true,
          neotree = true,
          telescope = { enabled = true },
          mason = true,
        },
      })
      vim.cmd.colorscheme("catppuccin")
    end,
  },
}
