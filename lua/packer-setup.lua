-- Check if the current operatingsystem is Windows
local function is_windows()
    local sysname = vim.loop.os_uname().sysname:lower()
    return sysname:find("windows", 1, true) ~= nil
end

local function get_nvim_data_path()
    return vim.fn.stdpath('data')
end

local packerPath = ""

if is_windows() then
    packerPath = get_nvim_data_path() .. "\\site\\pack\\packer\\start\\packer.nvim"
else
    packerPath = vim.fn.expand("~/.local/share/nvim/site/pack/packer/start/packer.nvim")
end
print(packerPath)

local packerRepository = "https://github.com/wbthomason/packer.nvim.git"

if vim.fn.isdirectory(packerPath) == 0 then
    local gitCommand = "git clone " .. packerRepository .. " " .. packerPath
    os.execute(gitCommand)
    vim.cmd [[packadd packer.nvim]]
end

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
            { 'neovim/nvim-lspconfig' },
            {
                'williamboman/mason.nvim',
                run = function() pcall(vim.cmd, 'MasonUpdate') end
            },
            { 'williamboman/mason-lspconfig.nvim' },

            -- Autocompletion
            { 'hrsh7th/nvim-cmp' },
            { 'hrsh7th/cmp-buffer' },
            { 'hrsh7th/cmp-path' },
            { 'saadparwaiz1/cmp_luasnip' },
            { 'hrsh7th/cmp-nvim-lsp' },
            { 'hrsh7th/cmp-nvim-lua' },

            -- Snippets
            { 'L3MON4D3/LuaSnip' },
            { 'rafamadriz/friendly-snippets' },
        }
    }

    -- Install vimspector
    use 'puremourning/vimspector'


    -- Install treesitter
    use {
        'nvim-treesitter/nvim-treesitter'
    }

    use "jose-elias-alvarez/null-ls.nvim"
end)
