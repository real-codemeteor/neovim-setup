local packerPath = vim.fn.expand("~/.local/share/nvim/site/pack/packer/start/packer.nvim")
local packerRepository = "https://github.com/wbthomason/packer.nvim.git"

if vim.fn.isdirectory(packerPath) == 0 then
    local gitCommand = "git clone " .. packerRepository .. " " .. packerPath
    vim.fn.system(gitCommand)
end

vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'
    -- Use the Solarized 8 color theme
    use 'lifepillar/vim-solarized8'
    -- Add vim-airline
    use {
        'vim-airline/vim-airline',
        requires = 'vim-airline/vim-airline-themes'
    }
    -- Add telescope and telescope file browser
    use "nvim-telescope/telescope-file-browser.nvim"
    use "nvim-telescope/telescope.nvim"
    use "nvim-lua/plenary.nvim"
    use "aaronhallaert/advanced-git-search.nvim"
    -- Add fugitive
    use "tpope/vim-fugitive"
    -- Add vgit
    use "tanvirtin/vgit.nvim"

    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v1.x',
        requires = {
            -- LSP Support
            {'neovim/nvim-lspconfig'},
            {
              'williamboman/mason.nvim',
              run = function() pcall(vim.cmd, 'MasonUpdate') end
            },
            {'williamboman/mason-lspconfig.nvim'},

            -- Autocompletion
            {'hrsh7th/nvim-cmp'},
            {'hrsh7th/cmp-buffer'},
            {'hrsh7th/cmp-path'},
            {'saadparwaiz1/cmp_luasnip'},
            {'hrsh7th/cmp-nvim-lsp'},
            {'hrsh7th/cmp-nvim-lua'},

            -- Snippets
            {'L3MON4D3/LuaSnip'},
            {'rafamadriz/friendly-snippets'},
        }
    }

    -- Install vimspector
    use 'puremourning/vimspector'
end)
