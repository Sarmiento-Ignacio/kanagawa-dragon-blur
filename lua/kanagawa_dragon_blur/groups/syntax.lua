local p = require("kanagawa_dragon_blur.palette")
local config = require("kanagawa_dragon_blur.config")
local styles = vim.tbl_map(function(value)
	return setmetatable(value, {
		__add = function(a, b)
			return vim.tbl_extend("force", a, b)
		end,
	})
end, config.styles)

return {
	-- Comment = { fg = p.comment, italic = true } + styles.comments,
	-- Constant = { fg = p.constant },
	-- String = { fg = p.string },
	Character = { fg = p.string },
	Number = { fg = p.number },
	-- Boolean = { fg = p.boolean } + styles.booleans,
	Float = { fg = p.number },
	-- Identifier = { fg = p.fg } + styles.identifiers,
	-- Function = { fg = p.function_ } + styles.functions,
	Statement = { fg = p.primary },
	Conditional = { fg = p.keyword },
	Repeat = { fg = p.keyword },
	Label = { fg = p.tag },
	Operator = { fg = p.operator },
	Keyword = { fg = p.keyword } + styles.keywords,
	Exception = { fg = p.keyword },
	-- PreProc = { fg = p.purple },
	Include = { fg = p.purple },
	Define = { fg = p.purple },
	Macro = { fg = p.purple },
	PreCondit = { fg = p.purple },
	-- Type = { fg = p.type },
	StorageClass = { fg = p.type },
	-- Structure = { fg = p.enum },
	Typedef = { fg = p.type },
	-- Special = { fg = p.tag },
	SpecialChar = { fg = p.string_special },
	-- Tag = { fg = p.tag },
	SpecialComment = { fg = p.comment_doc },
	Debug = { fg = p.hint },
	Underlined = { underline = true },
	-- Error = { fg = p.red },
	Todo = { fg = p.variant },

	-- HTML
	htmlArg = { fg = p.primary, italic = true },
	htmlEndTag = { fg = p.tag },
	htmlTitle = { fg = p.title },
	htmlTag = { fg = p.tag },
	htmlTagN = { fg = p.tag },
	htmlTagName = { fg = p.tag },

	-- Diff
	diffAdded = { fg = p.string },
	diffRemoved = { fg = p.variable },
	diffChanged = { fg = p.operator },
	diffOldFile = { fg = p.comment_doc },
	diffNewFile = { fg = p.title },
	diffFile = { fg = p.comment_doc },
	diffLine = { fg = p.function_ },
	diffIndexLine = { fg = p.enum },

	-- Grupos estándar para íconos y plugins (compatibilidad Kanagawa)
	Special = { fg = p.yellow }, -- Amarillo para JS, etc.
	Function = { fg = p.blue }, -- Azul para funciones/Lua/Vim
	Type = { fg = p.cyan }, -- Cyan para tipos/TS/Go
	Tag = { fg = p.red }, -- Rojo para HTML/Tag
	Directory = { fg = p.blue, bold = true }, -- Azul para carpetas
	Constant = { fg = p.orange }, -- Naranja para JSON, TOML, YAML, Rust
	PreProc = { fg = p.magenta }, -- Magenta para SCSS, PHP
	String = { fg = p.green }, -- Verde para Markdown, SVG
	Error = { fg = p.red }, -- Rojo para errores
	Boolean = { fg = p.yellow }, -- Amarillo para booleanos, lock, svelte, astro
	Structure = { fg = p.bright_orange }, -- Naranja brillante para enums, struct, event
	Identifier = { fg = p.fg }, -- Default
	Comment = { fg = p.comment }, -- Gris para txt
}
