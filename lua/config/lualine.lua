
-- Lua
local gps = require("nvim-gps")

require('lualine').setup({
    options = {
		theme = 'horizon',
		icons_enabled = true,
    	disabled_filetypes = {'dashboard', 'NvimTree'}

	},

    sections = {

			lualine_c = {

				{ gps.get_location, condition = gps.is_available },
			},

	},

})
