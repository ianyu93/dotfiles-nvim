return {
	"kristijanhusak/vim-dadbod-ui",
	dependencies = {
		{ "tpope/vim-dadbod" }, -- Remove lazy loading for the main dependency
		{ "kristijanhusak/vim-dadbod-completion", ft = { "sql", "mysql", "plsql" }, lazy = true }, -- Optional
		{ "davesavic/dadbod-ui-yank" }, -- Add yank functionality
	},
	cmd = {
		"DBUI",
		"DBUIToggle",
		"DBUIAddConnection",
		"DBUIFindBuffer",
	},
	init = function()
		-- Your DBUI configuration
		vim.g.db_ui_use_nerd_fonts = 1
		vim.g.db_ui_show_database_icon = 1
		vim.g.db_ui_use_nvim_notify = 1

		-- Database connections
		vim.g.dbs = {
			assistant_sys = "sqlite:/Users/ianyu/Developer/Kumo-no-Mori/db/assistant_sys.db",
			course_sys = "sqlite:/Users/ianyu/Developer/Kumo-no-Mori/db/course_sys.db",
			user_sys = "sqlite:/Users/ianyu/Developer/Kumo-no-Mori/db/user_sys.db",
			registry_sys = "sqlite:/Users/ianyu/Developer/Kumo-no-Mori/db/registry_sys.db",
			notification_sys = "sqlite:/Users/ianyu/Developer/Kumo-no-Mori/db/notification_sys.db",
			proxie_ctr = "sqlite:/Users/ianyu/Developer/Kumo-no-Mori/db/proxie_ctr.db",
			tool_sys = "sqlite:/Users/ianyu/Developer/Kumo-no-Mori/db/tool_sys.db",
		}
	end,
}
