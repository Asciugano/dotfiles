return {
  "nvim-treesitter/nvim-treesitter",
  opts = {
    ensure_installed = {
      "astro",
      "cmake",
      "cpp",
      "css",
      "go",
      "gitignore",
      "http",
      "java",
      "php",
      "rust",
    },
  },
  config = function(_, opts)
    require("nvim-treesitter.config").setup(opts)

    vim.filetype.add({
      extension = {
        mdx = "mdx",
      },
    })

    vim.treesitter.language.register("markdown", "mdx")
  end,
}
