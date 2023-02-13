require('basic')
require('keybindings')
require('plugins')
require('colorscheme')
-- 插件配置
require("plugin-config.nvim-tree")
require("plugin-config.bufferline")
require("plugin-config.lualine")
require("plugin-config.nvim-treesitter")
require("plugin-config.nvim-autopairs")

-- 内置LSP (新增)
require("lsp.setup")
require("lsp.cmp")

