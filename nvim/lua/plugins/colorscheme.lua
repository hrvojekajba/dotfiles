return {
  {
    "2nthony/vitesse.nvim",
    lazy = false,
    priority = 1000,
    dependencies = {
      "tjdevries/colorbuddy.nvim"
    },
    config = function()
      require("vitesse").setup({
        comment_italics = true,
        transparent_background = true,
      })
    end,
  },

  -- Configure LazyVim to load gruvbox
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "vitesse",
    },
  }
}
