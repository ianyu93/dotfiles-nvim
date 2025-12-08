return {
	"mistweaverco/kulala.nvim",
	ft = { "http", "rest" },
	keys = {
		-- Core Execution
		{ "<leader>kr", "<cmd>lua require('kulala').run()<cr>", desc = "Run current request" },
		{ "<leader>kR", "<cmd>lua require('kulala').run_all()<cr>", desc = "Run all requests" },
		{ "<leader>kl", "<cmd>lua require('kulala').replay()<cr>", desc = "Replay last request" },

		-- Quick Testing
		{ "<leader>kb", "<cmd>lua require('kulala').scratchpad()<cr>", desc = "Open scratchpad" },
		{ "<leader>ki", "<cmd>lua require('kulala').inspect()<cr>", desc = "Inspect request" },
		{ "<leader>kt", "<cmd>lua require('kulala').toggle_view()<cr>", desc = "Toggle headers/body" },
		{ "<leader>ks", "<cmd>lua require('kulala').show_stats()<cr>", desc = "Show stats" },

		-- API Development
		{ "<leader>ke", "<cmd>lua require('kulala').set_selected_env()<cr>", desc = "Select environment" },
		{ "<leader>kf", "<cmd>lua require('kulala').search()<cr>", desc = "Search requests" },
		{ "<leader>kn", "<cmd>lua require('kulala').jump_next()<cr>", desc = "Jump to next request" },
		{ "<leader>kp", "<cmd>lua require('kulala').jump_prev()<cr>", desc = "Jump to prev request" },

		-- Sharing/Import
		{ "<leader>kc", "<cmd>lua require('kulala').copy()<cr>", desc = "Copy as cURL" },
		{ "<leader>kC", "<cmd>lua require('kulala').from_curl()<cr>", desc = "Paste from cURL" },

		-- GraphQL
		{ "<leader>kg", "<cmd>lua require('kulala').download_graphql_schema()<cr>", desc = "Download GraphQL schema" },
	},
	opts = {
		default_view = "body",
		default_env = "dev",
		debug = false,
	},
}
