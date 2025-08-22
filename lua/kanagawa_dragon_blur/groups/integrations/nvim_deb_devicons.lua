local p = requier("kanagawa_dragon_blur.palette")

return {
	-- Grupos de highlight para iconos
	DevIconDefault = { fg = p.gray4 },

	-- Lenguajes de programación
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
	DevIconJava = { fg = p.red },
	DevIconPhp = { fg = p.purple },
	DevIconRb = { fg = p.red },
	DevIconRuby = { fg = p.red },
	DevIconVim = { fg = p.green },
	DevIconVimrc = { fg = p.green },

	-- Web
	DevIconHtml = { fg = p.red },
	DevIconHtm = { fg = p.red },
	DevIconCss = { fg = p.blue },
	DevIconSass = { fg = p.magenta },
	DevIconScss = { fg = p.magenta },
	DevIconLess = { fg = p.blue },
	DevIconStyl = { fg = p.green },

	-- Configuración
	DevIconJson = { fg = p.yellow },
	DevIconYaml = { fg = p.purple },
	DevIconYml = { fg = p.purple },
	DevIconToml = { fg = p.orange },
	DevIconXml = { fg = p.green },
	DevIconIni = { fg = p.gray4 },
	DevIconConf = { fg = p.gray4 },
	DevIconConfig = { fg = p.gray4 },

	-- Documentación
	DevIconMd = { fg = p.white },
	DevIconMarkdown = { fg = p.white },
	DevIconTxt = { fg = p.gray4 },
	DevIconPdf = { fg = p.red },
	DevIconDoc = { fg = p.blue },
	DevIconDocx = { fg = p.blue },

	-- Shell
	DevIconZsh = { fg = p.gray4 },
	DevIconBash = { fg = p.gray4 },
	DevIconSh = { fg = p.gray4 },
	DevIconFish = { fg = p.green },

	-- Docker y contenedores
	DevIconDocker = { fg = p.blue },
	DevIconDockerfile = { fg = p.blue },

	-- Git
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

	-- Datos
	DevIconCsv = { fg = p.green },
	DevIconTsv = { fg = p.green },
	DevIconSql = { fg = p.blue },
	DevIconDb = { fg = p.blue },
	DevIconSqlite = { fg = p.blue },

	-- Imágenes
	DevIconPng = { fg = p.purple },
	DevIconJpg = { fg = p.purple },
	DevIconJpeg = { fg = p.purple },
	DevIconGif = { fg = p.purple },
	DevIconSvg = { fg = p.yellow },
	DevIconIco = { fg = p.purple },
	DevIconWebp = { fg = p.purple },

	-- Archivos comprimidos
	DevIconZip = { fg = p.yellow },
	DevIconRar = { fg = p.yellow },
	DevIconTar = { fg = p.yellow },
	DevIcon7z = { fg = p.yellow },
	DevIconGz = { fg = p.yellow },

	-- Otros
	DevIconLicense = { fg = p.gray4 },
	DevIconReadme = { fg = p.gray4 },
	DevIconChangelog = { fg = p.gray4 },
	DevIconLog = { fg = p.gray4 },
	DevIconLock = { fg = p.red },
	DevIconEditorconfig = { fg = p.gray4 },
	DevIconPrettierrc = { fg = p.purple },
	DevIconEslintrc = { fg = p.purple },
}
