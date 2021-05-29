require("theprimeagen.telescope")
require("theprimeagen.git-worktree")
require("theprimeagen.lsp")
require("theprimeagen.statusline")
require("theprimeagen.compe")
require("theprimeagen.harpoon")

P = function(v)
  print(vim.inspect(v))
  return v
end

if pcall(require, 'plenary') then
  RELOAD = require('plenary.reload').reload_module

  R = function(name)
    RELOAD(name)
    return require(name)
  end
end

