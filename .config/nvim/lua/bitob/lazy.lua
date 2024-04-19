-- bootstrap lazy
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup(
  -- list of modules to be lazy loaded
  {
    { import = "bitob.plugins" },
    -- { import = "bitob.plugins.colorscheme" },
    -- { import = "bitob.plugins.lsp" }
  },
  -- table of options for lazy loading behavior 
  {
    checker = {
      enabled = true,    -- Enables the checker that likely checks for plugin updates or changes
      notify = true,    -- Enables notifications from the checker
    },
    change_detection = {
      notify = true,    -- Enables notifications for detected changes in the lazy loading process
    },
  }
)