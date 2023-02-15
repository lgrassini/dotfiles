if require("packer_install")() then
	return
end

vim.cmd.packadd("packer.nvim")
vim.cmd([[autocmd BufWritePost plugins.lua source <afile> | PackerCompile]])


vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerCompile
  augroup end
]])

vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)

    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use {
        'nvim-telescope/telescope.nvim',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }

    use {
        "williamboman/nvim-lsp-installer",
        "neovim/nvim-lspconfig",
    }

    --use({"L3MON4D3/LuaSnip", tag = "v<CurrentMajor>.*"})
    use "L3MON4D3/LuaSnip"

    use "rafamadriz/friendly-snippets"

    use {
        "hrsh7th/nvim-cmp",
        requires = {
            "hrsh7th/cmp-nvim-lsp",
            "hrsh7th/cmp-buffer",
            "hrsh7th/cmp-path",
            "hrsh7th/cmp-cmdline",
            "L3MON4D3/LuaSnip",
            "saadparwaiz1/cmp_luasnip"
        }
    }

    use {
        'lewis6991/gitsigns.nvim',
        -- tag = 'release' -- To use the latest release (do not use this if you run Neovim nightly or dev builds!)
    }

    use {'nyoom-engineering/oxocarbon.nvim'}

    use {
        'numToStr/Comment.nvim',
        config = function()
            require('Comment').setup()
        end
    }

    use 'm4xshen/autoclose.nvim'

    -- Python
    use { "untitled-ai/jupyter_ascending.vim" }

  end
)
