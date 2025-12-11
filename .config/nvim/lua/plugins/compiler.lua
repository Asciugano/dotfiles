return {
  "Zeioth/compiler.nvim",
  dependencies = { "stevearc/overseer.nvim" },
  config = function()
    require("compiler").setup({})
  end,
}
