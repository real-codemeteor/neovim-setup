function bottom_terminal()
    vim.cmd("only")
    vim.cmd("split")
    vim.cmd("wincmd j")
    vim.cmd("res 10")
    vim.cmd("term")
    vim.cmd("wincmd k")
    vim.cmd("vs")
end

function single_window()
    vim.cmd("only")
end

function toggle_contrast()
    if vim.o.background == 'dark' then
        vim.o.background = 'light'
        vim.cmd('colorscheme PaperColor')
    else
        vim.o.background = 'dark'
        vim.api.nvim_command 'colorscheme solarized8'
    end
end
