local p = require("kanagawa_dragon_blur.palette")

return {
	-- Fondo y texto principal
	Normal = { fg = p.fg, bg = "NONE" },
	NormalNC = { fg = p.fg, bg = "NONE" },
	NormalFloat = { fg = p.fg, bg = "NONE" },

	-- Elementos de UI
	ColorColumn = { bg = p.gray1 },
	CursorLine = { bg = p.gray1 },
	Conceal = { fg = p.gray1 },
	SignColumn = { bg = "NONE", fg = p.fg_muted },
	FoldColumn = { bg = "NONE", fg = p.fg_muted },
	VertSplit = { fg = p.border },
	WinSeparator = { fg = p.border },
	EndOfBuffer = { fg = p.bg_dark },

	-- Cursor y selección
	Cursor = { fg = p.black, bg = p.fg },
	lCursor = { fg = p.black, bg = p.fg },
	CursorIM = { fg = p.black, bg = p.fg },
	Visual = { bg = p.selection },
	VisualNOS = { bg = p.selection },

	-- Directorios y títulos
	Directory = { fg = p.blue },
	Title = { fg = p.title },

	-- Diffs y Git
	DiffAdd = { bg = p.surface, fg = p.green },
	DiffChange = { fg = p.yellow, underline = true },
	DiffDelete = { bg = p.surface, fg = p.red },
	DiffText = { bg = p.selection, fg = p.yellow },

	-- Mensajes
	ErrorMsg = { fg = p.red },
	WarningMsg = { fg = p.yellow },
	ModeMsg = { fg = p.ui_secondary, bold = true },
	MoreMsg = { fg = p.purple },
	Question = { fg = p.purple },

	-- Número de línea
	LineNr = { fg = p.fg_muted },
	CursorLineNr = { fg = p.accent },

	-- Pmenu (menú de autocompletado)
	Pmenu = { fg = p.fg, bg = p.surface },
	PmenuSel = { fg = p.fg, bg = p.selection },
	PmenuSbar = { bg = p.surface },
	PmenuThumb = { bg = p.ui_secondary },

	-- Búsqueda
	Search = { fg = p.accent, bg = p.black },
	IncSearch = { fg = p.black, bg = p.accent },
	CurSearch = { fg = p.black, bg = p.accent },

	-- Otros
	Folded = { fg = p.fg_muted },
	MatchParen = { fg = p.accent, underline = true },
	NonText = { fg = p.fg_muted },
	FloatBorder = { fg = p.border, bg = "NONE" },
	QuickFixLine = { fg = p.red, bg = p.gray2 },
	SpecialKey = { fg = p.fg_muted },
	SpellBad = { fg = p.orange, underline = true },
	SpellCap = { fg = p.accent },
	SpellLocal = { fg = p.accent },
	SpellRare = { fg = p.accent },

	-- Barra de estado y pestañas
	StatusLine = { fg = p.fg, bg = "NONE" },
	StatusLineNC = { fg = p.fg_muted, bg = "NONE" },
	StatusLineTerm = { fg = p.fg, bg = "NONE" },
	StatusLineTermNC = { fg = p.fg_muted, bg = "NONE" },
	TabLine = { fg = "NONE" },
	TabLineFill = { bg = "NONE" },
	TabLineSel = { fg = "NONE" },

	-- Terminal
	Terminal = { fg = p.fg, bg = p.black },

	-- Winbar
	Winbar = { fg = p.ui_secondary, bg = "NONE" },
	WinbarNC = { fg = p.fg_muted, bg = "NONE" },

	-- Estilo Italic (si se usa explícitamente)
	Italic = { fg = p.blue, italic = true },
	WildMenu = { fg = p.black, bg = p.purple },
}
