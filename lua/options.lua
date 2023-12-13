vim.opt.number = true -- Enable line numbers
vim.opt.ignorecase = true -- Ignore case sensitivitie when searching
vim.opt.smartcase = true -- Do a case sensitive search when the search text contains capital letters
vim.opt.lbr = true -- Better line wrap
vim.opt.ai = true -- Enable auto indent
vim.opt.si = true -- Enable smart indent
vim.opt.tabstop = 4 -- Set the number of white spaces 1 tab character is worth to 4
vim.opt.shiftwidth = 4 -- Set the number of columns 1 indentation level is.
vim.opt.expandtab = true -- Replaces tabs with spaces
vim.opt.hidden = true -- Keep buffers in memory 
vim.opt.scrolloff = 5 -- The numer of lines to keep at the top
vim.opt.termguicolors = true -- Enable terminal true colors
vim.opt.background = 'dark' -- Tell vim we are using a dark background
vim.opt.cursorline = true -- Hilight the line where the cursor is located
vim.g.indent_guides_enable_on_vim_startup = 1

-- Switch to the solarized 8 color scheme
pcall(function()
    vim.api.nvim_command 'colorscheme solarized8'
end)
