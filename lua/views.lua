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
