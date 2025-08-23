-- lua/kanagawa_dragon_blur/groups/integrations/file_icons.lua
-- Este archivo reemplaza a nvim_web_devicons.lua y setup_devicons.lua

local p = require("kanagawa_dragon_blur.palette")

return {
	-- =============================================================================
	-- ICONOS POR EXTENSIÓN DE ARCHIVO (como lo hace Kanagawa)
	-- =============================================================================

	-- Estos highlight groups son usados directamente por file managers
	-- sin necesidad de nvim-web-devicons

	-- Lenguajes de programación
	NvimTreeFileJs = { fg = p.yellow }, -- JavaScript
	NvimTreeFileTs = { fg = p.blue }, -- TypeScript
	NvimTreeFileJsx = { fg = p.cyan }, -- React JSX
	NvimTreeFileTsx = { fg = p.cyan }, -- React TSX
	NvimTreeFileCs = { fg = p.purple }, -- C#
	NvimTreeFilePy = { fg = p.yellow }, -- Python
	NvimTreeFileRs = { fg = p.orange }, -- Rust
	NvimTreeFileGo = { fg = p.cyan }, -- Go
	NvimTreeFileJava = { fg = p.red }, -- Java
	NvimTreeFilePhp = { fg = p.purple }, -- PHP
	NvimTreeFileRb = { fg = p.red }, -- Ruby
	NvimTreeFileLua = { fg = p.blue }, -- Lua
	NvimTreeFileVim = { fg = p.green }, -- Vim
	NvimTreeFileC = { fg = p.blue }, -- C
	NvimTreeFileCpp = { fg = p.blue }, -- C++

	-- Web technologies
	NvimTreeFileHtml = { fg = p.red }, -- HTML
	NvimTreeFileCss = { fg = p.blue }, -- CSS
	NvimTreeFileScss = { fg = p.magenta }, -- SCSS
	NvimTreeFileSass = { fg = p.magenta }, -- SASS

	-- Configuration files
	NvimTreeFileJson = { fg = p.yellow }, -- JSON
	NvimTreeFileYaml = { fg = p.purple }, -- YAML
	NvimTreeFileYml = { fg = p.purple }, -- YML
	NvimTreeFileToml = { fg = p.orange }, -- TOML
	NvimTreeFileXml = { fg = p.green }, -- XML

	-- Documentation
	NvimTreeFileMd = { fg = p.white }, -- Markdown
	NvimTreeFileTxt = { fg = p.gray4 }, -- Text files

	-- Shell scripts
	NvimTreeFileSh = { fg = p.gray4 }, -- Shell
	NvimTreeFileBash = { fg = p.gray4 }, -- Bash
	NvimTreeFileZsh = { fg = p.gray4 }, -- Zsh
	NvimTreeFileFish = { fg = p.green }, -- Fish

	-- Images
	NvimTreeFilePng = { fg = p.purple }, -- PNG
	NvimTreeFileJpg = { fg = p.purple }, -- JPG
	NvimTreeFileJpeg = { fg = p.purple }, -- JPEG
	NvimTreeFileGif = { fg = p.purple }, -- GIF
	NvimTreeFileSvg = { fg = p.yellow }, -- SVG

	-- Archives
	NvimTreeFileZip = { fg = p.yellow }, -- ZIP
	NvimTreeFileTar = { fg = p.yellow }, -- TAR
	NvimTreeFileGz = { fg = p.yellow }, -- GZ

	-- Docker
	NvimTreeFileDockerfile = { fg = p.blue }, -- Dockerfile

	-- =============================================================================
	-- NEO-TREE (mismo sistema)
	-- =============================================================================

	NeoTreeFileNameJs = { fg = p.yellow },
	NeoTreeFileNameTs = { fg = p.blue },
	NeoTreeFileNameJsx = { fg = p.cyan },
	NeoTreeFileNameTsx = { fg = p.cyan },
	NeoTreeFileNameCs = { fg = p.purple },
	NeoTreeFileNamePy = { fg = p.yellow },
	NeoTreeFileNameRs = { fg = p.orange },
	NeoTreeFileNameGo = { fg = p.cyan },
	NeoTreeFileNameJava = { fg = p.red },
	NeoTreeFileNamePhp = { fg = p.purple },
	NeoTreeFileNameRb = { fg = p.red },
	NeoTreeFileNameLua = { fg = p.blue },
	NeoTreeFileNameVim = { fg = p.green },
	NeoTreeFileNameC = { fg = p.blue },
	NeoTreeFileNameCpp = { fg = p.blue },
	NeoTreeFileNameHtml = { fg = p.red },
	NeoTreeFileNameCss = { fg = p.blue },
	NeoTreeFileNameScss = { fg = p.magenta },
	NeoTreeFileNameSass = { fg = p.magenta },
	NeoTreeFileNameJson = { fg = p.yellow },
	NeoTreeFileNameYaml = { fg = p.purple },
	NeoTreeFileNameYml = { fg = p.purple },
	NeoTreeFileNameToml = { fg = p.orange },
	NeoTreeFileNameXml = { fg = p.green },
	NeoTreeFileNameMd = { fg = p.white },
	NeoTreeFileNameTxt = { fg = p.gray4 },
	NeoTreeFileNameSh = { fg = p.gray4 },
	NeoTreeFileNameBash = { fg = p.gray4 },
	NeoTreeFileNameZsh = { fg = p.gray4 },
	NeoTreeFileNameFish = { fg = p.green },
	NeoTreeFileNamePng = { fg = p.purple },
	NeoTreeFileNameJpg = { fg = p.purple },
	NeoTreeFileNameJpeg = { fg = p.purple },
	NeoTreeFileNameGif = { fg = p.purple },
	NeoTreeFileNameSvg = { fg = p.yellow },
	NeoTreeFileNameZip = { fg = p.yellow },
	NeoTreeFileNameTar = { fg = p.yellow },
	NeoTreeFileNameGz = { fg = p.yellow },
	NeoTreeFileNameDockerfile = { fg = p.blue },

	-- =============================================================================
	-- OIL.NVIM (file manager minimalista)
	-- =============================================================================

	OilFileJs = { fg = p.yellow },
	OilFileTs = { fg = p.blue },
	OilFileJsx = { fg = p.cyan },
	OilFileTsx = { fg = p.cyan },
	OilFileCs = { fg = p.purple },
	OilFilePy = { fg = p.yellow },
	OilFileRs = { fg = p.orange },
	OilFileGo = { fg = p.cyan },
	OilFileJava = { fg = p.red },
	OilFilePhp = { fg = p.purple },
	OilFileRb = { fg = p.red },
	OilFileLua = { fg = p.blue },
	OilFileVim = { fg = p.green },
	OilFileC = { fg = p.blue },
	OilFileCpp = { fg = p.blue },
	OilFileHtml = { fg = p.red },
	OilFileCss = { fg = p.blue },
	OilFileScss = { fg = p.magenta },
	OilFileSass = { fg = p.magenta },
	OilFileJson = { fg = p.yellow },
	OilFileYaml = { fg = p.purple },
	OilFileYml = { fg = p.purple },
	OilFileToml = { fg = p.orange },
	OilFileXml = { fg = p.green },
	OilFileMd = { fg = p.white },
	OilFileTxt = { fg = p.gray4 },
	OilFileSh = { fg = p.gray4 },
	OilFileBash = { fg = p.gray4 },
	OilFileZsh = { fg = p.gray4 },
	OilFileFish = { fg = p.green },
	OilFilePng = { fg = p.purple },
	OilFileJpg = { fg = p.purple },
	OilFileJpeg = { fg = p.purple },
	OilFileGif = { fg = p.purple },
	OilFileSvg = { fg = p.yellow },
	OilFileZip = { fg = p.yellow },
	OilFileTar = { fg = p.yellow },
	OilFileGz = { fg = p.yellow },
	OilFileDockerfile = { fg = p.blue },
}
