local M = {}

function M.setup()
	local has_devicons, devicons = pcall(require, "nvim-web-devicons")
	if not has_devicons then
		return
	end

	local p = require("kanagawa_dragon_blur.palette")

	-- Configuración directa del plugin nvim-web-devicons
	devicons.setup({
		override = {
			-- Lenguajes de programación
			lua = { icon = "󰢱", color = p.blue, name = "Lua" },
			js = { icon = "󰌞", color = p.yellow, name = "JavaScript" },
			mjs = { icon = "󰌞", color = p.yellow, name = "JavaScript" },
			ts = { icon = "󰛦", color = p.blue, name = "TypeScript" },
			tsx = { icon = "󰜈", color = p.cyan, name = "TypeScriptReact" },
			jsx = { icon = "󰜈", color = p.cyan, name = "JavaScriptReact" },
			py = { icon = "󰌠", color = p.yellow, name = "Python" },
			rs = { icon = "󱘗", color = p.orange, name = "Rust" },
			go = { icon = "󰟓", color = p.cyan, name = "Go" },
			c = { icon = "󰙱", color = p.blue, name = "C" },
			cpp = { icon = "󰙲", color = p.blue, name = "Cpp" },
			cc = { icon = "󰙲", color = p.blue, name = "Cpp" },
			cxx = { icon = "󰙲", color = p.blue, name = "Cpp" },
			["c++"] = { icon = "󰙲", color = p.blue, name = "Cpp" },
			cs = { icon = "󰌛", color = p.purple, name = "CSharp" }, -- C# con color púrpura
			java = { icon = "󰬷", color = p.red, name = "Java" },
			php = { icon = "󰌟", color = p.purple, name = "Php" },
			rb = { icon = "󰴭", color = p.red, name = "Ruby" },
			vim = { icon = "", color = p.green, name = "Vim" },
			kt = { icon = "󱈙", color = p.purple, name = "Kotlin" },
			scala = { icon = "", color = p.red, name = "Scala" },
			swift = { icon = "", color = p.orange, name = "Swift" },
			dart = { icon = "", color = p.cyan, name = "Dart" },

			-- Web technologies
			html = { icon = "󰌝", color = p.red, name = "Html" },
			htm = { icon = "󰌝", color = p.red, name = "Html" },
			css = { icon = "󰌜", color = p.blue, name = "Css" },
			scss = { icon = "󰌜", color = p.magenta, name = "Scss" },
			sass = { icon = "󰌜", color = p.magenta, name = "Sass" },
			less = { icon = "󰌜", color = p.blue, name = "Less" },
			stylus = { icon = "󰌜", color = p.green, name = "Stylus" },
			styl = { icon = "󰌜", color = p.green, name = "Stylus" },

			-- Configuration files
			json = { icon = "󰘦", color = p.yellow, name = "Json" },
			jsonc = { icon = "󰘦", color = p.yellow, name = "JsonC" },
			json5 = { icon = "󰘦", color = p.yellow, name = "Json5" },
			yaml = { icon = "󰈙", color = p.purple, name = "Yaml" },
			yml = { icon = "󰈙", color = p.purple, name = "Yml" },
			toml = { icon = "󰈙", color = p.orange, name = "Toml" },
			xml = { icon = "󰈙", color = p.green, name = "Xml" },
			ini = { icon = "󰈙", color = p.gray4, name = "Ini" },
			conf = { icon = "󰈙", color = p.gray4, name = "Conf" },
			config = { icon = "󰈙", color = p.gray4, name = "Config" },

			-- Documentation
			md = { icon = "󰍔", color = p.white, name = "Markdown" },
			markdown = { icon = "󰍔", color = p.white, name = "Markdown" },
			mdx = { icon = "󰍔", color = p.cyan, name = "Mdx" },
			txt = { icon = "󰈙", color = p.gray4, name = "Text" },
			pdf = { icon = "󰈤", color = p.red, name = "Pdf" },
			doc = { icon = "󰈬", color = p.blue, name = "Doc" },
			docx = { icon = "󰈬", color = p.blue, name = "Docx" },

			-- Shell scripts
			sh = { icon = "󱆃", color = p.gray4, name = "Shell" },
			zsh = { icon = "󱆃", color = p.gray4, name = "Zsh" },
			bash = { icon = "󱆃", color = p.gray4, name = "Bash" },
			fish = { icon = "󰈺", color = p.green, name = "Fish" },
			ps1 = { icon = "󰨊", color = p.blue, name = "PowerShell" },
			psm1 = { icon = "󰨊", color = p.blue, name = "PowerShell" },

			-- Images
			png = { icon = "󰋩", color = p.purple, name = "Png" },
			jpg = { icon = "󰋩", color = p.purple, name = "Jpg" },
			jpeg = { icon = "󰋩", color = p.purple, name = "Jpeg" },
			gif = { icon = "󰵸", color = p.purple, name = "Gif" },
			svg = { icon = "󰜡", color = p.yellow, name = "Svg" },
			ico = { icon = "󰋩", color = p.purple, name = "Ico" },
			webp = { icon = "󰋩", color = p.purple, name = "Webp" },

			-- Archives
			zip = { icon = "󰿺", color = p.yellow, name = "Zip" },
			tar = { icon = "󰿺", color = p.yellow, name = "Tar" },
			gz = { icon = "󰿺", color = p.yellow, name = "Gz" },
			["7z"] = { icon = "󰿺", color = p.yellow, name = "7z" },
			rar = { icon = "󰿺", color = p.yellow, name = "Rar" },

			-- Docker
			dockerfile = { icon = "󰡨", color = p.blue, name = "Dockerfile" },

			-- Database
			sql = { icon = "󰆼", color = p.blue, name = "Sql" },
			db = { icon = "󰆼", color = p.blue, name = "Database" },
			sqlite = { icon = "󰆼", color = p.blue, name = "Sqlite" },
			sqlite3 = { icon = "󰆼", color = p.blue, name = "Sqlite3" },

			-- Data files
			csv = { icon = "󰈙", color = p.green, name = "Csv" },
			tsv = { icon = "󰈙", color = p.green, name = "Tsv" },
		},
		default = true,
		strict = true,
		override_by_filename = {
			-- Git files
			[".gitignore"] = { icon = "󰊢", color = p.orange, name = "GitIgnore" },
			[".gitattributes"] = { icon = "󰊢", color = p.orange, name = "GitAttributes" },
			[".gitmodules"] = { icon = "󰊢", color = p.orange, name = "GitModules" },
			[".gitconfig"] = { icon = "󰊢", color = p.orange, name = "GitConfig" },

			-- Environment files
			[".env"] = { icon = "󰙪", color = p.gray4, name = "Env" },
			[".env.local"] = { icon = "󰙪", color = p.gray4, name = "EnvLocal" },
			[".env.example"] = { icon = "󰙪", color = p.gray4, name = "EnvExample" },
			[".env.development"] = { icon = "󰙪", color = p.gray4, name = "EnvDev" },
			[".env.production"] = { icon = "󰙪", color = p.gray4, name = "EnvProd" },

			-- Package files
			["package.json"] = { icon = "󰎙", color = p.green, name = "PackageJson" },
			["package-lock.json"] = { icon = "󰎙", color = p.red, name = "PackageLockJson" },
			["yarn.lock"] = { icon = "󰎙", color = p.blue, name = "YarnLock" },
			["Cargo.toml"] = { icon = "󱘗", color = p.orange, name = "CargoToml" },
			["Cargo.lock"] = { icon = "󱘗", color = p.orange, name = "CargoLock" },
			["Gemfile"] = { icon = "󰴭", color = p.red, name = "Gemfile" },
			["Gemfile.lock"] = { icon = "󰴭", color = p.red, name = "GemfileLock" },
			["requirements.txt"] = { icon = "󰌠", color = p.yellow, name = "Requirements" },
			["pyproject.toml"] = { icon = "󰌠", color = p.yellow, name = "PyProject" },

			-- Docker files
			["docker-compose.yml"] = { icon = "󰡨", color = p.blue, name = "DockerCompose" },
			["docker-compose.yaml"] = { icon = "󰡨", color = p.blue, name = "DockerCompose" },
			["docker-compose.override.yml"] = { icon = "󰡨", color = p.blue, name = "DockerComposeOverride" },

			-- Special files
			["README.md"] = { icon = "󰍔", color = p.gray4, name = "Readme" },
			["README"] = { icon = "󰍔", color = p.gray4, name = "Readme" },
			["LICENSE"] = { icon = "󰿃", color = p.gray4, name = "License" },
			["LICENSE.txt"] = { icon = "󰿃", color = p.gray4, name = "License" },
			["CHANGELOG.md"] = { icon = "󰈙", color = p.gray4, name = "Changelog" },
			["CHANGELOG"] = { icon = "󰈙", color = p.gray4, name = "Changelog" },
			["Makefile"] = { icon = "󱁤", color = p.gray4, name = "Makefile" },
			["makefile"] = { icon = "󱁤", color = p.gray4, name = "Makefile" },

			-- Config files
			[".editorconfig"] = { icon = "󰙪", color = p.gray4, name = "EditorConfig" },
			[".prettierrc"] = { icon = "󰙪", color = p.purple, name = "Prettier" },
			[".prettierrc.json"] = { icon = "󰙪", color = p.purple, name = "Prettier" },
			[".eslintrc.js"] = { icon = "󰙪", color = p.purple, name = "Eslint" },
			[".eslintrc.json"] = { icon = "󰙪", color = p.purple, name = "Eslint" },
			["tsconfig.json"] = { icon = "󰛦", color = p.blue, name = "TypeScriptConfig" },
			["webpack.config.js"] = { icon = "󰜷", color = p.blue, name = "Webpack" },
			["vite.config.js"] = { icon = "󰜷", color = p.yellow, name = "Vite" },
			["vite.config.ts"] = { icon = "󰜷", color = p.yellow, name = "Vite" },
		},
	})
end

return M
