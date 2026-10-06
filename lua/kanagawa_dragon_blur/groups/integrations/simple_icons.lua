local p = require("kanagawa_dragon_blur.palette")

-- NvimTree específico
local nvimtree_highlights = {
	NvimTreeSpecialFile = { fg = p.yellow }, -- Archivos especiales (.js, .json, etc.)
	NvimTreeImageFile = { fg = p.purple }, -- Imágenes (.png, .jpg, etc.)
	NvimTreeExecFile = { fg = p.green }, -- Ejecutables
	NvimTreeSymlink = { fg = p.cyan }, -- Enlaces simbólicos
}

-- NeoTree específico
local neotree_highlights = {
	NeoTreeFileIcon = { fg = p.yellow }, -- Iconos de archivos por defecto
}

-- Combinar todos los highlights
local all_highlights = {}

-- Agregar todos los métodos
for k, v in pairs(nvimtree_highlights) do
	all_highlights[k] = v
end
for k, v in pairs(neotree_highlights) do
	all_highlights[k] = v
end

return all_highlights
