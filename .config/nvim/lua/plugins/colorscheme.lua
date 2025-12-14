return {
  -- { "ellisonleao/gruvbox.nvim" },

  -- {
  --   "craftzdog/solarized-osaka.nvim",
  --   lazy = true,
  --   priority = 1000,
  --   opts = function()
  --     return {
  --       transparent = true,
  --     }
  --   end,
  -- },

  -- {
  --   "folke/tokyonight.nvim",
  --   lazy = true,
  --   priority = 1000,
  --   opts = function()
  --     return {
  --       style = "moon",
  --       transparent = true,
  --     }
  --   end,
  -- },

  {
    "blazkowolf/gruber-darker.nvim",
    lazy = true,
    priority = 1000,
  },

  -- {
  --   "ellisonleao/gruvbox.nvim",
  --   lazy = true,
  --   priority = 1000,
  --   opts = function()
  --     return {
  --       transparent_mode = true,
  --     }
  --   end,
  -- },

  -- {
  --   "f4z3r/gruvbox-material.nvim",
  --   lazy = true,
  --   priority = 1000,
  --   config = function()
  --     require("gruvbox-material").setup({
  --       background = {
  --         transparent = true,
  --       },
  --     })
  --   end,
  -- },

  {
    "neanias/everforest-nvim",
    lazy = true,
    priority = 1000,
    config = function()
      require("everforest").setup({
        background = "soft",
        transparent_background_level = 2,
      })
    end,
  },

  -- {
  --   "EdenEast/nightfox.nvim",
  --   lazy = true,
  --   priority = 1000,
  --   config = function()
  --     require("nightfox").setup({
  --       options = {
  --         transparent = true,
  --       },
  --     })
  --   end,
  -- },

  -- {
  --   "catppuccin/nvim",
  --   lazy = true,
  --   priority = 1000,
  --   opts = function()
  --     return {
  --       transparent_background = true,
  --       flavor = "mocha",
  --     }
  --   end,
  -- },
  --
  -- {
  --   "Mofiqul/dracula.nvim",
  --   lazy = true,
  --   priority = 1000,
  --   opts = {
  --     transparent_bg = true,
  --   },
  -- },

  {
    "LazyVim/LazyVim",
    opts = {
      -- colorscheme = "gruvbox",
      -- colorscheme = "gruvbox-material",
      -- colorscheme = "duskfox",
      -- colorscheme = "everforest",
      colorscheme = "gruber-darker",
      -- colorscheme = "tokyonight-moon",
    },
  },
}
