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
    "catppuccin/nvim",
    priority = 1000,
    config = function()
      require("catppuccin").setup({
        flavour = "auto",
        background = {
          light = "latte",
          dark = "mocha",
        },
        transparent_background = true,
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
    "marko-cerovac/material.nvim",
    name = "material",
    lazy = false,
    priority = 1000,
    config = function()
      require("material").setup({
        disable = { background = true },
      })
    end,
  },
  {
    "WTFox/jellybeans.nvim",
    priority = 1000,
    opts = {
      transparent = true,
      italics = true,
      flat_ui = true,
      plugins = {
        all = false,
        auto = true,
      },
    },
  },
  {
    "Mofiqul/dracula.nvim",
    name = "dracula",
    priority = 1000,
    config = function()
      require("dracula").setup({
        transparent_bg = true,
      })
    end,
  },
  {
    "projekt0n/github-nvim-theme",
    name = "github-theme",
    lazy = false,
    priority = 1000,
    config = function()
      require("github-theme").setup({
        options = {
          transparent = true,
        },
      })
      -- vim.cmd("colorscheme github_dark")
    end,
  },
  {
    "Mofiqul/vscode.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require("vscode").setup({
        transparent = true,
        italic_comments = true,
        underline_links = true,
        disable_nvimtree_bg = true,
      })
    end,
  },
  {
    "olivercederborg/poimandres.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require("poimandres").setup({
        disable_background = true,
        disable_float_background = true,
      })
    end,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "kanso",
    },
  },
}
