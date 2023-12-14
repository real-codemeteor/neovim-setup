vim.api.nvim_create_augroup("custom_buffer", { clear = true })

vim.api.nvim_create_autocmd("textyankpost", {
    group    = "custom_buffer",
    pattern  = "*",
    callback = function() vim.highlight.on_yank { timeout = 500 } end
})

vim.api.nvim_create_autocmd("bufwritepre", {
    callback = function()
        vim.lsp.buf.format()
    end
})
