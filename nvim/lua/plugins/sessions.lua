
local function change_nvim_tree_dir()
	local nvim_tree = require("nvim-tree")
	nvim_tree.change_dir(vim.fn.getcwd())
end

require("auto-session").setup({
	log_level = "error",
    auto_session_enable_last_session = true,
    auto_session_enabled = true,
    auto_save_enabled = true,
    auto_restore_enabled = true,
    auto_session_use_git_branch = true,
    bypass_session_save_file_types = nil,
	auto_session_suppress_dirs = { "~/", "~/Projects", "~/Downloads", "/" },
	post_restore_cmds = { change_nvim_tree_dir, "NvimTreeOpen" },
	pre_save_cmds = { "NvimTreeClose" },
})


require('auto-session').setup(opts)
