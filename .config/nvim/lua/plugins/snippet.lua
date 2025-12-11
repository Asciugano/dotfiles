local cmd = require("lazy.core.handler.cmd")
return {
  {
    "L3MON4D3/LuaSnip",
    dependencies = {
      "rafamadriz/friendly-snippets",
    },
    config = function()
      require("luasnip.loaders.from_vscode").lazy_load()
    end,
  },

  {
    "hrsh7th/nvim-cmp",
    dependencies = { "hrsh7th/cmp-emoji" },
    opts = function(_, opts)
      table.insert(opts.sources, { name = "emoji" })
    end,
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      vim.list_extend(opts.ensure_installed, {
        "javascript",
        "typescript",
        "tsx",
        "vue",
        "json",
        "yaml",
        "lua",
        "bash",
      })
    end,
  },

  { import = "lazyvim.plugins.extras.lang.typescript" },
  { import = "lazyvim.plugins.extras.lang.json" },

  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        clangd = {},
      },
    },
  },

  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        intelephense = {},
        phpactor = {},
        clangd = {},
        perlls = {
          cmd = { "perl", "-MPerl::LanguageServer", "-e", "Perl::LanguageServer::run" },
          filetypes = { "perl" },
          root_dir = require("lspconfig.util").root_pattern(".git", "."),
          settings = {
            perlls = {
              perlCmd = "perl",
            },
          },
        },
        lua_ls = {
          settings = {
            Lua = {
              workspace = {
                library = {
                  [vim.fn.expand("~/.config/lua-cats/love2d/library")] = true,
                },
              },
              diagnostics = {
                globals = { "love" },
              },
            },
          },
        },
      },
    },
  },
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        rust_analyzer = {},
      },
    },
  },
  {
    "simrat39/rust-tools.nvim",
    ft = { "rust" },
    config = function()
      require("rust-tools").setup({})
    end,
  },
}
