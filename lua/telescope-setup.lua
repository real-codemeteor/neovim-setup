telescope_setup = require("telescope")
telescope_setup.load_extension "file_browser"
telescope_setup.setup{
    extensions = {
        advanced_git_search = {
            diff_lugin = "fugitive"
        }
    }
}

telescope_setup.load_extension("advanced_git_search")
