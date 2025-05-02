vim.g.base46_cache = vim.fn.stdpath "data" .. "/base46/"
vim.g.mapleader = "," 

-- vim.opt.timeout = true -- Enable timeout for key sequences
-- vim.opt.timeoutlen = 300 -- Reduce timeout length to 300ms for faster leader key response
vim.opt.relativenumber = true -- Enable relative line numbers
vim.opt.number = true -- Enable absolute line numbers for the current line


-- bootstrap lazy and all plugins
local lazypath = vim.fn.stdpath "data" .. "/lazy/lazy.nvim"

if not vim.uv.fs_stat(lazypath) then
  local repo = "https://github.com/folke/lazy.nvim.git"
  vim.fn.system { "git", "clone", "--filter=blob:none", repo, "--branch=stable", lazypath }
end

vim.opt.rtp:prepend(lazypath)
vim.cmd("syntax on")
vim.cmd("filetype plugin indent on")
-- vim.opt.title = false
local lazy_config = require "configs.lazy"

-- load plugins
require("lazy").setup({
  {
    "NvChad/NvChad",
    lazy = false,
    branch = "v2.5",
    import = "nvchad.plugins",
  },

  { import = "plugins" },
}, lazy_config)

-- load theme
dofile(vim.g.base46_cache .. "defaults")
dofile(vim.g.base46_cache .. "statusline")

require "options"
require "nvchad.autocmds"

vim.schedule(function()
  require "mappings"
end)
