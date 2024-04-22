--[[
  The initial config is highly inspired by
  Josean: https://github.com/josean-dev/dev-environment-files/tree/main/.config/nvim
  and
  CPow/Typecraft: https://github.com/cpow/cpow-dotfiles/tree/master, https://github.com/cpow/neovim-for-newbs/tree/main
]]

-- don't auto load netrw
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.g.netrw_liststyle = 3 -- use tree style in netrw

require("bitob.core")
require("bitob.lazy")
