telescope_setup = require("telescope")
telescope_setup.load_extension "file_browser"
telescope_setup.setup {
    extensions = {
        advanced_git_search = {
            diff_lugin = "fugitive"
        }
    }
}

telescope_setup.load_extension("advanced_git_search")

local action_state = require('telescope.actions.state')
local actions = require('telescope.actions')

local m = {}

m.my_buffer = function()
  require'telescope.builtin'.buffers{
    attach_mappings = function(prompt_bufnr, map)
      local delete_buf = function()
        local selection = action_state.get_selected_entry()
        actions.close(prompt_bufnr)
        vim.api.nvim_buf_delete(selection.bufnr, { force = true })
      end

      map('i', '<c-u>', delete_buf)

      return true
    end
  }
end

return m
