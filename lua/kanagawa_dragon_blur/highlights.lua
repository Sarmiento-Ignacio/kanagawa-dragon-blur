local config = require("kanagawa_dragon_blur.config")
local editor_highlights = require("kanagawa_dragon_blur.groups.editor")
local syntax_highlights = require("kanagawa_dragon_blur.groups.syntax")
local terminal = require("kanagawa_dragon_blur.terminal")

local M = {}

local function load_highlights(highlights)
	for group, settings in pairs(highlights) do
		vim.api.nvim_set_hl(0, group, settings)
	end
end

function M.setup()
	load_highlights(editor_highlights)
	load_highlights(syntax_highlights)

	for integration, enabled in pairs(config.integrations) do
		if enabled then
			local ok, highlights = pcall(require, "kanagawa_dragon_blur.groups.integrations." .. integration)
			if ok and highlights then
				load_highlights(highlights)
			end
		end
	end

	-- Configurar devicons si está disponible
	local ok, setup_devicons = pcall(require, "kanagawa_dragon_blur.setup_devicons")
	if ok then
		setup_devicons.setup()
	end

	load_highlights(config.highlight_overrides)

	if config.terminal_colors then
		terminal.setup()
	end
end

return M
