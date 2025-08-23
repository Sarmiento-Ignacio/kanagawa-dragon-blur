-- Archivo: lua/kanagawa_dragon_blur/groups/integrations/simple_icons.lua
-- Reemplaza tu file_icons.lua actual con este archivo más simple

local p = require("kanagawa_dragon_blur.palette")

-- MÉTODO 1: Highlights básicos que SIEMPRE funcionan
local basic_highlights = {
	-- Grupos básicos de Neovim que los file managers heredan
	Special = { fg = p.yellow }, -- Para JS, JSON, etc.
	Function = { fg = p.blue }, -- Para Lua, TS, etc.
	Type = { fg = p.cyan }, -- Para Go, interfaces
	Constant = { fg = p.orange }, -- Para Rust, constantes
	String = { fg = p.green }, -- Para texto, markdown
	Keyword = { fg = p.purple }, -- Para C#, PHP
	Error = { fg = p.red }, -- Para errores, Java
	Directory = { fg = p.blue }, -- Para carpetas
}

-- MÉTODO 2: NvimTree específico
local nvimtree_highlights = {
	NvimTreeSpecialFile = { fg = p.yellow }, -- Archivos especiales (.js, .json, etc.)
	NvimTreeImageFile = { fg = p.purple }, -- Imágenes (.png, .jpg, etc.)
	NvimTreeExecFile = { fg = p.green }, -- Ejecutables
	NvimTreeSymlink = { fg = p.cyan }, -- Enlaces simbólicos
}

-- MÉTODO 3: NeoTree específico
local neotree_highlights = {
	NeoTreeFileIcon = { fg = p.yellow }, -- Iconos de archivos por defecto
}

-- MÉTODO 4: Extensiones específicas (algunos file managers las usan)
local extension_highlights = {
	-- JavaScript
	["@text.uri.javascript"] = { fg = p.yellow },
	["@text.uri.js"] = { fg = p.yellow },

	-- TypeScript
	["@text.uri.typescript"] = { fg = p.blue },
	["@text.uri.ts"] = { fg = p.blue },

	-- C#
	["@text.uri.csharp"] = { fg = p.purple },
	["@text.uri.cs"] = { fg = p.purple },

	-- Python
	["@text.uri.python"] = { fg = p.yellow },
	["@text.uri.py"] = { fg = p.yellow },

	-- Rust
	["@text.uri.rust"] = { fg = p.orange },
	["@text.uri.rs"] = { fg = p.orange },

	-- Go
	["@text.uri.go"] = { fg = p.cyan },

	-- Java
	["@text.uri.java"] = { fg = p.red },

	-- HTML
	["@text.uri.html"] = { fg = p.red },

	-- CSS
	["@text.uri.css"] = { fg = p.blue },

	-- JSON
	["@text.uri.json"] = { fg = p.yellow },

	-- Markdown
	["@text.uri.markdown"] = { fg = p.white },
	["@text.uri.md"] = { fg = p.white },
}

-- Combinar todos los highlights
local all_highlights = {}

-- Agregar todos los métodos
for k, v in pairs(basic_highlights) do
	all_highlights[k] = v
end
for k, v in pairs(nvimtree_highlights) do
	all_highlights[k] = v
end
for k, v in pairs(neotree_highlights) do
	all_highlights[k] = v
end
for k, v in pairs(extension_highlights) do
	all_highlights[k] = v
end

return all_highlights
