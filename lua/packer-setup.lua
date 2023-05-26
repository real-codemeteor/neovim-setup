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
end)
