return {
	-- "rose-pine/neovim",
	-- name = "rose-pine",

    "morhetz/gruvbox",
    name = "gruvbox",
	lazy = false, -- make sure we load this during startup if it is your main colorscheme
	priority = 1000, -- make sure to load this before all the other start plugins
    disable_background = true,
	config = function()
		-- load the colorscheme here
		vim.cmd([[colorscheme gruvbox]])
        vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
        vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
	end,

}
