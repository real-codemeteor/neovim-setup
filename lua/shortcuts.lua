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
map("n", "<Leader>tff", ":Telescope find_files<CR>", {silent = true})
map("n", "<Leader>tb", ":Telescope buffers<CR>", {silent = true})
map("n", "<Leader>tag", ":AdvancedGitSearch<CR>", {silent = true})

-- Key bindings Vimspector
map("n", "<F5>", ":call vimspector#Continue()<CR>")
map("n", "<F9>", ":call vimspector#ToggleBreakpoint()<CR>")
map("n", "<F10>", ":call vimspector#StepOver()<CR>")
map("n", "<F11>", ":call vimspector#StepInto()<CR>")
map("n", "<C-F11>", ":call vimspector#StepOut()<CR>")
map("n", "<S-F5>", ":call vimspector#Reset()<CR>")
map("n", "<SC-F5>", ":call vimspector#Restart()<CR>")
