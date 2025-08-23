-- lua/kanagawa_dragon_blur/groups/integrations/nvim_web_devicons.lua
-- (Nota: cambia el nombre del archivo de nvim_deb_devicons.lua a nvim_web_devicons.lua)

local p = require("kanagawa_dragon_blur.palette")

return {
	-- Grupos de highlight para iconos por categoría de color
	DevIconDefault = { fg = p.gray4 },

	-- Lenguajes de programación con colores específicos
	DevIconLua = { fg = p.blue },
	DevIconJs = { fg = p.yellow },
	DevIconJavaScript = { fg = p.yellow },
	DevIconTs = { fg = p.blue },
	DevIconTypeScript = { fg = p.blue },
	DevIconJsx = { fg = p.cyan },
	DevIconTsx = { fg = p.cyan },
	DevIconPy = { fg = p.yellow },
	DevIconPython = { fg = p.yellow },
	DevIconRs = { fg = p.orange },
	DevIconRust = { fg = p.orange },
	DevIconGo = { fg = p.cyan },
	DevIconC = { fg = p.blue },
	DevIconCpp = { fg = p.blue },
	DevIconCs = { fg = p.purple }, -- Agregado C#
	DevIconCSharp = { fg = p.purple },
	DevIconJava = { fg = p.red },
	DevIconPhp = { fg = p.purple },
	DevIconRb = { fg = p.red },
	DevIconRuby = { fg = p.red },
	DevIconVim = { fg = p.green },
	DevIconVimrc = { fg = p.green },

	-- Web technologies
	DevIconHtml = { fg = p.red },
	DevIconHtm = { fg = p.red },
	DevIconCss = { fg = p.blue },
	DevIconSass = { fg = p.magenta },
	DevIconScss = { fg = p.magenta },
	DevIconLess = { fg = p.blue },
	DevIconStyl = { fg = p.green },

	-- Configuration files
	DevIconJson = { fg = p.yellow },
	DevIconYaml = { fg = p.purple },
	DevIconYml = { fg = p.purple },
	DevIconToml = { fg = p.orange },
	DevIconXml = { fg = p.green },
	DevIconIni = { fg = p.gray4 },
	DevIconConf = { fg = p.gray4 },
	DevIconConfig = { fg = p.gray4 },

	-- Documentation
	DevIconMd = { fg = p.white },
	DevIconMarkdown = { fg = p.white },
	DevIconTxt = { fg = p.gray4 },
	DevIconPdf = { fg = p.red },
	DevIconDoc = { fg = p.blue },
	DevIconDocx = { fg = p.blue },

	-- Shell scripts
	DevIconZsh = { fg = p.gray4 },
	DevIconBash = { fg = p.gray4 },
	DevIconSh = { fg = p.gray4 },
	DevIconFish = { fg = p.green },

	-- Docker y contenedores
	DevIconDocker = { fg = p.blue },
	DevIconDockerfile = { fg = p.blue },

	-- Git files
	DevIconGitignore = { fg = p.orange },
	DevIconGitattributes = { fg = p.orange },
	DevIconGitmodules = { fg = p.orange },
	DevIconGitconfig = { fg = p.orange },

	-- Package managers
	DevIconPackageJson = { fg = p.green },
	DevIconPackageLockJson = { fg = p.red },
	DevIconYarnLock = { fg = p.blue },
	DevIconCargoToml = { fg = p.orange },
	DevIconGemfile = { fg = p.red },
	DevIconRequirementsTxt = { fg = p.yellow },

	-- Build tools
	DevIconMakefile = { fg = p.gray4 },
	DevIconCMakeLists = { fg = p.gray4 },
	DevIconGulpfile = { fg = p.red },
	DevIconGruntfile = { fg = p.yellow },
	DevIconWebpack = { fg = p.blue },

	-- Data files
	DevIconCsv = { fg = p.green },
	DevIconTsv = { fg = p.green },
	DevIconSql = { fg = p.blue },
	DevIconDb = { fg = p.blue },
	DevIconSqlite = { fg = p.blue },

	-- Image files
	DevIconPng = { fg = p.purple },
	DevIconJpg = { fg = p.purple },
	DevIconJpeg = { fg = p.purple },
	DevIconGif = { fg = p.purple },
	DevIconSvg = { fg = p.yellow },
	DevIconIco = { fg = p.purple },
	DevIconWebp = { fg = p.purple },

	-- Compressed files
	DevIconZip = { fg = p.yellow },
	DevIconRar = { fg = p.yellow },
	DevIconTar = { fg = p.yellow },
	DevIcon7z = { fg = p.yellow },
	DevIconGz = { fg = p.yellow },

	-- Special files
	DevIconLicense = { fg = p.gray4 },
	DevIconReadme = { fg = p.gray4 },
	DevIconChangelog = { fg = p.gray4 },
	DevIconLog = { fg = p.gray4 },
	DevIconLock = { fg = p.red },
	DevIconEditorconfig = { fg = p.gray4 },
	DevIconPrettierrc = { fg = p.purple },
	DevIconEslintrc = { fg = p.purple },
}
