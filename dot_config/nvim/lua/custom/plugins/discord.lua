return {
	"vyfor/cord.nvim",
	---@type CordConfig
	opts = {
		ipc = {
			socket = "/tmp/discord-ipc-0",
		},

		buttons = {
			{
				label = "View Repository",
				url = function(opts)
					return opts.repo_url
				end,
			},
		},

		advanced = {
			discord = {
				reconnect = {
					enabled = true,
				},
			},
		},

		display = {
			theme = "minecraft",
			flavor = "accent",
		},
	},
}
