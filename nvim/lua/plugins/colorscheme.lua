return {
  {
    "neanias/everforest-nvim",
    priority = 1000,
    config = function()
      require("everforest").setup({
        transparent_background_level = 2,
      })
    end,
  },
  {
    "sainnhe/gruvbox-material",
    lazy = true,
    config = function()
      vim.g.gruvbox_material_transparent_background = 2
    end,
  },
  {
    "aktersnurra/no-clown-fiesta.nvim",
    opts = {
      transparent = true,
    },
  },
  {
    "rose-pine/neovim",
    name = "rose-pine",
    priority = 1000,
    config = function()
      require("rose-pine").setup({
        variant = "moon",
        styles = {
          border = true,
          italic = true,
          transparency = true,
        },
      })
    end,
  },
  {
    "thesimonho/kanagawa-paper.nvim",
    priority = 1000,
    opts = {
      transparent = true,
    },
  },
  {
    "webhooked/kanso.nvim",
    name = "kanso",
    priority = 1000,
    config = function()
      require("kanso").setup({
        bold = true,
        italics = true,
        undercurl = false,
        commentStyle = { italic = true },
        transparent = true,
      })
    end,
  },
  {
    "WTFox/jellybeans.nvim",
    priority = 1000,
    opts = {
      transparent = true,
      italics = true,
    },
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "rose-pine",
    },
  },
}
