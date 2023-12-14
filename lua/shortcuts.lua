function map(mode, lhs, rhs, opts)
    local options = { noremap = true }
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- Key bindings for Telescope
map("n", "<Leader>tF", ":Telescope file_browser<CR>", {silent = true})
map("n", "<Leader>tlg", ":Telescope live_grep<CR>", {silent = true})
map("n", "<Leader>tf", ":Telescope find_files<CR>", {silent = true})
map("n", "<Leader>tb", ":lua require('telescope-setup').my_buffer()<CR>")
map("n", "<Leader>tag", ":AdvancedGitSearch<CR>", {silent = true})
map("", "<Leader>tgs", ":Telescope grep_string<CR>")

-- Key bindings Vimspector
map("n", "<F5>", ":call vimspector#Continue()<CR>")
map("n", "<F9>", ":call vimspector#ToggleBreakpoint()<CR>")
map("n", "<F10>", ":call vimspector#StepOver()<CR>")
map("n", "<F11>", ":call vimspector#StepInto()<CR>")
map("n", "<C-F11>", ":call vimspector#StepOut()<CR>")
map("n", "<S-F5>", ":call vimspector#Reset()<CR>")
map("n", "<F17>", ":call vimspector#Reset()<CR>")
map("n", "<SC-F5>", ":call vimspector#Restart()<CR>")
map("n", "<F41>", ":call vimspector#Restart()<CR>")

-- Key bindings LSP
map("n", "<Leader>lr", ":lua vim.lsp.buf.references()<CR>")
map("n", "<Leader>lf", ":lua vim.lsp.buf.format()<CR>")
map("n", "<Leader>le", ":lua vim.diagnostic.open_float({scope=\"line\"})<CR>")


-- Codium.ai
map("i", "<C-Right>", "codeium#Accept()", {silent = true, expr = true})


-- Views
map("", "<Leader>vc", ":lua toggle_contrast()<CR>")
map("", "<Leader>vb", ":lua bottom_terminal()<CR>")
map("", "<Leader>vs", ":lua single_window()<CR>")
