local jdtls = require("jdtls")

local root_dir = require("jdtls.setup").find_root({ "src", ".git" })
local workspace_dir = vim.fn.stdpath("data") .. "/jdtls-workspace/" .. vim.fn.fnamemodify(root_dir, ":p:h:t")

local config = {
  cmd = { "jdtls" },
  root_dir = root_dir,
  settings = {
    java = {},
  },
  init_options = {
    bundles = {},
  },
}

jdtls.start_or_attach(config)
