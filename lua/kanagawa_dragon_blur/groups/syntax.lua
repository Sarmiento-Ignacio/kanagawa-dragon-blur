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
	-- Keyword = { fg = p.keyword } + styles.keywords,
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
	-- Special = { fg = p.yellow }, -- Amarillo para JS, etc.
	-- Function = { fg = p.blue }, -- Azul para funciones/Lua/Vim
	-- Type = { fg = p.cyan }, -- Cyan para tipos/TS/Go
	Tag = { fg = p.red }, -- Rojo para HTML/Tag
	-- Directory = { fg = p.blue, bold = true }, -- Azul para carpetas
	-- Constant = { fg = p.orange }, -- Naranja para JSON, TOML, YAML, Rust
	-- PreProc = { fg = p.magenta }, -- Magenta para SCSS, PHP
	-- String = { fg = p.green }, -- Verde para Markdown, SVG
	-- Error = { fg = p.red }, -- Rojo para errores
	Boolean = { fg = p.yellow }, -- Amarillo para booleanos, lock, svelte, astro
	Structure = { fg = p.bright_orange }, -- Naranja brillante para enums, struct, event
	-- Identifier = { fg = p.fg }, -- Default
	-- Comment = { fg = p.comment }, -- Gris para txt
	-- =============================================================================
	-- GRUPOS BÁSICOS DE NEOVIM (usados por TODOS los file managers)
	-- =============================================================================
	Directory = { fg = p.blue, bold = true }, -- Carpetas
	Special = { fg = p.yellow }, -- Archivos especiales (.js, .json, etc.)
	Function = { fg = p.blue }, -- Funciones (lua, vim, etc.)
	Type = { fg = p.cyan }, -- Tipos (go, ts, interfaces)
	Constant = { fg = p.orange }, -- Constantes (rust, toml, config)
	String = { fg = p.green }, -- Strings (markdown, text, shell)
	Keyword = { fg = p.purple }, -- Keywords (c#, php, keywords)
	Error = { fg = p.red }, -- Errores (java, html)
	Comment = { fg = p.gray4 }, -- Comentarios (txt, logs)
	PreProc = { fg = p.magenta }, -- Preprocessor (scss, sass)
	Identifier = { fg = p.white }, -- Identificadores (default)

	-- =============================================================================
	-- NETRW (File manager nativo de Neovim)
	-- =============================================================================
	netrwDir = { fg = p.blue, bold = true },
	netrwPlain = { fg = p.white },
	netrwExe = { fg = p.green, bold = true },
	netrwSpecial = { fg = p.yellow },
	netrwSymLink = { fg = p.cyan },
	netrwTreeBar = { fg = p.gray4 },

	-- =============================================================================
	-- TELESCOPE (si lo usas como file picker)
	-- =============================================================================
	TelescopeResultsSpecialComment = { fg = p.yellow },
	TelescopeResultsFunction = { fg = p.blue },
	TelescopeResultsVariable = { fg = p.cyan },
	TelescopeResultsConstant = { fg = p.orange },
	TelescopeResultsString = { fg = p.green },
	TelescopeResultsKeyword = { fg = p.purple },

	-- =============================================================================
	-- OIL.NVIM (file manager minimalista)
	-- =============================================================================
	OilDir = { fg = p.blue, bold = true },
	OilFile = { fg = p.white },
	OilCreate = { fg = p.green },
	OilDelete = { fg = p.red },
	OilMove = { fg = p.yellow },
	OilChange = { fg = p.orange },

	-- =============================================================================
	-- MINI.FILES (del ecosistema mini.nvim)
	-- =============================================================================
	MiniFilesDirectory = { fg = p.blue, bold = true },
	MiniFilesFile = { fg = p.white },
	MiniFilesBorder = { fg = p.gray4 },
	MiniFilesTitle = { fg = p.yellow, bold = true },

	-- =============================================================================
	-- FZF-LUA (si lo usas)
	-- =============================================================================
	FzfLuaDir = { fg = p.blue },
	FzfLuaFile = { fg = p.white },

	-- =============================================================================
	-- RANGER / LF / NNN (terminal file managers)
	-- =============================================================================
	-- Estos usan los colores de terminal, que ya están configurados en terminal.lua

	-- =============================================================================
	-- CONFIGURACIÓN POR TREESITTER (detecta tipos de archivo automáticamente)
	-- =============================================================================
	["@text.uri"] = { fg = p.cyan, underline = true }, -- Links
	["@text.reference"] = { fg = p.blue }, -- Referencias
	["@text.title.1"] = { fg = p.red, bold = true }, -- Títulos H1
	["@text.title.2"] = { fg = p.orange, bold = true }, -- Títulos H2
	["@text.title.3"] = { fg = p.yellow, bold = true }, -- Títulos H3
	["@text.emphasis"] = { fg = p.green, italic = true }, -- Énfasis
	["@text.strong"] = { fg = p.blue, bold = true }, -- Texto fuerte
	["@markup.heading"] = { fg = p.yellow, bold = true }, -- Headings markdown
	["@markup.link.url"] = { fg = p.cyan, underline = true }, -- URLs
	["@markup.raw"] = { fg = p.green }, -- Código raw

	-- =============================================================================
	-- HIGHLIGHT GROUPS GENÉRICOS PARA EXTENSIONES (algunos plugins los usan)
	-- =============================================================================
	FileJs = { fg = p.yellow },
	FileTs = { fg = p.blue },
	FileJsx = { fg = p.cyan },
	FileTsx = { fg = p.cyan },
	FileCs = { fg = p.purple },
	FilePy = { fg = p.yellow },
	FileRs = { fg = p.orange },
	FileGo = { fg = p.cyan },
	FileJava = { fg = p.red },
	FilePhp = { fg = p.purple },
	FileRb = { fg = p.red },
	FileLua = { fg = p.blue },
	FileVim = { fg = p.green },
	FileC = { fg = p.blue },
	FileCpp = { fg = p.blue },
	FileHtml = { fg = p.red },
	FileCss = { fg = p.blue },
	FileScss = { fg = p.magenta },
	FileSass = { fg = p.magenta },
	FileJson = { fg = p.yellow },
	FileYaml = { fg = p.purple },
	FileYml = { fg = p.purple },
	FileToml = { fg = p.orange },
	FileXml = { fg = p.green },
	FileMd = { fg = p.white },
	FileMarkdown = { fg = p.white },
	FileTxt = { fg = p.gray4 },
	FileSh = { fg = p.gray4 },
	FileBash = { fg = p.gray4 },
	FileZsh = { fg = p.gray4 },
	FileFish = { fg = p.green },
	FilePng = { fg = p.purple },
	FileJpg = { fg = p.purple },
	FileJpeg = { fg = p.purple },
	FileGif = { fg = p.purple },
	FileSvg = { fg = p.yellow },
	FileZip = { fg = p.yellow },
	FileTar = { fg = p.yellow },
	FileGz = { fg = p.yellow },
	FileDockerfile = { fg = p.blue },
}
