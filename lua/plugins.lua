local packer = require("packer")
packer.startup({
    function(use)
        use 'wbthomason/packer.nvim'
        use("folke/tokyonight.nvim")
        use({ "nvim-tree/nvim-tree.lua", requires = "nvim-tree/nvim-web-devicons" })
        use({ "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" })
        -- bufferline
        use({ "akinsho/bufferline.nvim", requires = { "kyazdani42/nvim-web-devicons", "moll/vim-bbye" }})
        -- lualine
        use({ "nvim-lualine/lualine.nvim", requires = { "kyazdani42/nvim-web-devicons" } })
        use("arkav/lualine-lsp-progress")
        --------------------- LSP --------------------
        use({ "williamboman/mason.nvim" })
        use({ "williamboman/mason-lspconfig.nvim" })
                -- Lspconfig
        use({ "neovim/nvim-lspconfig" })
        -- 补全引擎
        use("hrsh7th/nvim-cmp")
        -- 补全源
        use("hrsh7th/cmp-vsnip")
        use("hrsh7th/cmp-nvim-lsp") -- { name = nvim_lsp }
        use("hrsh7th/cmp-buffer") -- { name = 'buffer' },
        use("hrsh7th/cmp-path") -- { name = 'path' }
        use("hrsh7th/cmp-cmdline") -- { name = 'cmdline' }
        use('simrat39/rust-tools.nvim')
        -----------autopairs--------------------------
        use("windwp/nvim-autopairs")
    end,
    config = {
      -- 并发数限制
      max_jobs = 16,
      -- 自定义源
      git = {
        -- default_url_format = "https://hub.fastgit.xyz/%s",
        -- default_url_format = "https://mirror.ghproxy.com/https://github.com/%s",
        -- default_url_format = "https://gitcode.net/mirrors/%s",
        -- default_url_format = "https://gitclone.com/github.com/%s",
      },
    },
})

-- 每次保存 plugins.lua 自动安装插件
pcall(
  vim.cmd,
  [[
    augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
    augroup end
  ]]
)
