function map(mode, lhs, rhs, opts)
    local options = { noremap = true }
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- Key bindings for Telescope
map("n", "<Leader>tf", ":Telescope file_browser<CR>", {silent = true})
map("n", "<Leader>tlg", ":Telescope live_grep<CR>", {silent = true})
map("n", "<Leader>tag", ":AdvanceGitSearch<CR>", {silent = true})

-- Key bindings Vimspector
map("n", "<F5>", ":call vimspector#Continue()<CR>")
