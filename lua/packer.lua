local packerPath = vim.fn.expand("~/.local/share/nvim/site/pack/packer/start/packer.nvim")
if vim.fn.isdirectory(packerPath) == 0 then
    vim.fn.system("git clone --depth 1 https://github.com/wbthomason/packer.vim " .. packerPath)
end
