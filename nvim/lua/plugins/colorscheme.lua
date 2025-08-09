return {
  {
    "2nthony/vitesse.nvim",
    lazy = false,
    priority = 1000,
    dependencies = {
      "tjdevries/colorbuddy.nvim",
    },
    config = function()
      require("vitesse").setup({
        comment_italics = true,
        transparent_background = true,
      })
    end,
  },

  {
    "dgox16/oldworld.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require("oldworld").setup({
        integrations = {
          navic = true,
          alpha = false,
          rainbow_delimiters = false,
        },
        highlight_overrides = {
          Normal = { bg = "NONE" },
          NormalNC = { bg = "NONE" },
          CursorLine = { bg = "#222128" },
        },
      })
    end,
  },

  -- Configure LazyVim to load gruvbox
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "oldworld",
    },
  },
}
