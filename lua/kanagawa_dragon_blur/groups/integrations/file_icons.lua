local p = require("kanagawa_dragon_blur.palette")

return {
	-- =============================================================================
	-- NETRW (File manager nativo de Neovim)
	-- =============================================================================
	netrwDir = { fg = p.blue },
	netrwPlain = { fg = p.white },
	netrwExe = { fg = p.green },
	netrwSpecial = { fg = p.yellow },
	netrwSymLink = { fg = p.cyan },
	netrwTreeBar = { fg = p.ui_secondary },

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
	OilDir = { fg = p.blue },
	OilFile = { fg = p.white },
	OilCreate = { fg = p.green },
	OilDelete = { fg = p.red },
	OilMove = { fg = p.yellow },
	OilChange = { fg = p.orange },

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
	FileTxt = { fg = p.fg_muted },
	FileSh = { fg = p.fg_muted },
	FileBash = { fg = p.fg_muted },
	FileZsh = { fg = p.fg_muted },
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
