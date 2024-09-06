local lspkind = require("lspkind")

-- auto reload config for lvim to reload on save
vim.cmd([[
  augroup ReloadConfig
    autocmd!
    autocmd BufWritePost ~/.config/lvim/**/*.lua source <afile>
  augroup END
]])
-- set the colorscheme
lvim.colorscheme = "moonfly"
-- cmp sources

-- copilot into cmp config
lvim.builtin.cmp.formatting.format = function(entry, vim_item)
  vim_item.kind = lspkind.presets.default[vim_item.kind]
  vim_item.menu = ({
    copilot = "   ",
    luasnip = "[Snippet]",
    buffer = "[Buffer]",
    path = "[Path]",
  })[entry.source.name]
  return vim_item
end
