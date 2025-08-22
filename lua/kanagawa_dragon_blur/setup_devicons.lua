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
			-- Lenguajes
			lua = { icon = "󰢱", color = p.blue, name = "Lua" },
			js = { icon = "󰌞", color = p.yellow, name = "JavaScript" },
			ts = { icon = "󰛦", color = p.blue, name = "TypeScript" },
			jsx = { icon = "󰜈", color = p.cyan, name = "JavaScriptReact" },
			tsx = { icon = "󰜈", color = p.cyan, name = "TypeScriptReact" },
			py = { icon = "󰌠", color = p.yellow, name = "Python" },
			rs = { icon = "󱘗", color = p.orange, name = "Rust" },
			go = { icon = "󰟓", color = p.cyan, name = "Go" },
			c = { icon = "󰙱", color = p.blue, name = "C" },
			cpp = { icon = "󰙲", color = p.blue, name = "Cpp" },
			java = { icon = "󰬷", color = p.red, name = "Java" },
			php = { icon = "󰌟", color = p.purple, name = "Php" },
			rb = { icon = "󰴭", color = p.red, name = "Ruby" },
			vim = { icon = "", color = p.green, name = "Vim" },

			-- Web
			html = { icon = "󰌝", color = p.red, name = "Html" },
			css = { icon = "󰌜", color = p.blue, name = "Css" },
			scss = { icon = "󰌜", color = p.magenta, name = "Scss" },
			sass = { icon = "󰌜", color = p.magenta, name = "Sass" },

			-- Config
			json = { icon = "󰘦", color = p.yellow, name = "Json" },
			yaml = { icon = "󰈙", color = p.purple, name = "Yaml" },
			yml = { icon = "󰈙", color = p.purple, name = "Yml" },
			toml = { icon = "󰈙", color = p.orange, name = "Toml" },
			xml = { icon = "󰈙", color = p.green, name = "Xml" },

			-- Docs
			md = { icon = "󰍔", color = p.white, name = "Markdown" },
			txt = { icon = "󰈙", color = p.gray4, name = "Text" },

			-- Shell
			sh = { icon = "󱆃", color = p.gray4, name = "Shell" },
			zsh = { icon = "󱆃", color = p.gray4, name = "Zsh" },
			bash = { icon = "󱆃", color = p.gray4, name = "Bash" },
			fish = { icon = "󰈺", color = p.green, name = "Fish" },

			-- Package files
			["package.json"] = { icon = "󰎙", color = p.green, name = "PackageJson" },
			["package-lock.json"] = { icon = "󰎙", color = p.red, name = "PackageLockJson" },
			["yarn.lock"] = { icon = "󰎙", color = p.blue, name = "YarnLock" },
			["Cargo.toml"] = { icon = "󱘗", color = p.orange, name = "CargoToml" },

			-- Git
			[".gitignore"] = { icon = "󰊢", color = p.orange, name = "GitIgnore" },
			[".gitattributes"] = { icon = "󰊢", color = p.orange, name = "GitAttributes" },

			-- Images
			png = { icon = "󰋩", color = p.purple, name = "Png" },
			jpg = { icon = "󰋩", color = p.purple, name = "Jpg" },
			jpeg = { icon = "󰋩", color = p.purple, name = "Jpeg" },
			gif = { icon = "󰵸", color = p.purple, name = "Gif" },
			svg = { icon = "󰜡", color = p.yellow, name = "Svg" },

			-- Archives
			zip = { icon = "󰿺", color = p.yellow, name = "Zip" },
			tar = { icon = "󰿺", color = p.yellow, name = "Tar" },
			gz = { icon = "󰿺", color = p.yellow, name = "Gz" },

			-- Docker
			dockerfile = { icon = "󰡨", color = p.blue, name = "Dockerfile" },

			-- Otros archivos especiales
			["README.md"] = { icon = "󰍔", color = p.gray4, name = "Readme" },
			["LICENSE"] = { icon = "󰿃", color = p.gray4, name = "License" },
			["Makefile"] = { icon = "󱁤", color = p.gray4, name = "Makefile" },
		},
		default = true,
		strict = true,
		override_by_filename = {
			[".gitignore"] = { icon = "󰊢", color = p.orange, name = "GitIgnore" },
			[".gitattributes"] = { icon = "󰊢", color = p.orange, name = "GitAttributes" },
			[".env"] = { icon = "󰙪", color = p.gray4, name = "Env" },
			[".env.local"] = { icon = "󰙪", color = p.gray4, name = "EnvLocal" },
			[".env.example"] = { icon = "󰙪", color = p.gray4, name = "EnvExample" },
			["docker-compose.yml"] = { icon = "󰡨", color = p.blue, name = "DockerCompose" },
			["docker-compose.yaml"] = { icon = "󰡨", color = p.blue, name = "DockerCompose" },
		},
	})
end

return M
