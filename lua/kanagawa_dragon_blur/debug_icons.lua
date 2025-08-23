-- Archivo: lua/kanagawa_dragon_blur/debug_icons.lua
-- Ejecutar con :lua require("kanagawa_dragon_blur.debug_icons").debug()

local M = {}

function M.debug()
	print("=== DEBUG KANAGAWA DRAGON BLUR ICONS ===")

	-- 1. Verificar que el tema esté cargado
	print("1. Tema actual:", vim.g.colors_name)
	if vim.g.colors_name ~= "kanagawa-dragon-blur" then
		print("❌ ERROR: El tema no está cargado correctamente")
		return
	end

	-- 2. Verificar la paleta de colores
	local ok, palette = pcall(require, "kanagawa_dragon_blur.palette")
	if not ok then
		print("❌ ERROR: No se puede cargar la paleta:", palette)
		return
	end

	print("2. Paleta cargada correctamente")
	print("   - Yellow:", palette.yellow or "NO DEFINIDO")
	print("   - Blue:", palette.blue or "NO DEFINIDO")
	print("   - Purple:", palette.purple or "NO DEFINIDO")
	print("   - Orange:", palette.orange or "NO DEFINIDO")

	-- 3. Verificar highlight groups específicos
	local test_groups = {
		"NvimTreeSpecialFile",
		"NvimTreeImageFile",
		"NvimTreeExecFile",
		"NeoTreeFileNameJs",
		"Directory",
		"Special",
		"Function",
		"Type",
		"String",
	}

	print("3. Verificando highlight groups:")
	for _, group in ipairs(test_groups) do
		local hl = vim.api.nvim_get_hl_by_name(group, true)
		if hl and (hl.foreground or hl.fg) then
			local color = hl.foreground or hl.fg
			print(string.format("   ✅ %s: #%06x", group, color))
		else
			print(string.format("   ❌ %s: NO DEFINIDO o SIN COLOR", group))
		end
	end

	-- 4. Verificar integraciones
	local config = require("kanagawa_dragon_blur.config")
	print("4. Integraciones habilitadas:")
	for integration, enabled in pairs(config.integrations) do
		if enabled then
			local ok_int, _ = pcall(require, "kanagawa_dragon_blur.groups.integrations." .. integration)
			if ok_int then
				print("   ✅", integration)
			else
				print("   ❌", integration, "(archivo no encontrado)")
			end
		end
	end

	-- 5. Verificar file manager
	print("5. File managers detectados:")
	local managers = {
		["nvim-tree"] = "nvim-tree",
		["neo-tree"] = "neo-tree.nvim",
		["oil"] = "oil.nvim",
	}

	for name, plugin in pairs(managers) do
		local ok_manager = pcall(require, plugin:gsub("%.nvim", ""))
		if ok_manager then
			print("   ✅", name, "está instalado")
		else
			print("   ❌", name, "NO está instalado")
		end
	end

	-- 6. Test de highlight groups de file managers
	print("6. Testing file manager highlights:")

	-- Crear highlights de prueba
	local test_highlights = {
		NvimTreeFileJs = { fg = palette.yellow },
		NvimTreeFileCs = { fg = palette.purple },
		NvimTreeSpecialFile = { fg = palette.orange },
		NeoTreeFileNameJs = { fg = palette.yellow },
		NeoTreeFileNameCs = { fg = palette.purple },
	}

	for group, opts in pairs(test_highlights) do
		vim.api.nvim_set_hl(0, group, opts)
		print("   🔧 Aplicado:", group, "con color", opts.fg)
	end

	print("\n=== RECOMENDACIONES ===")
	print("1. Reinicia tu file manager: :NvimTreeClose | :NvimTreeOpen")
	print("2. O recarga el tema: :colorscheme kanagawa-dragon-blur")
	print("3. Verifica que estés usando un file manager compatible")
	print("4. Si usas nvim-web-devicons, intenta deshabilitarlo temporalmente")

	return true
end

-- Función para aplicar highlights de emergencia
function M.emergency_fix()
	print("Aplicando fix de emergencia para iconos...")

	local palette = require("kanagawa_dragon_blur.palette")

	-- Highlights básicos que DEBEN funcionar
	local emergency_highlights = {
		-- NvimTree
		NvimTreeSpecialFile = { fg = palette.yellow },
		NvimTreeImageFile = { fg = palette.purple },
		NvimTreeExecFile = { fg = palette.green },
		NvimTreeSymlink = { fg = palette.cyan },

		-- Por extensiones específicas (si tu file manager las soporta)
		NvimTreeFile_js = { fg = palette.yellow },
		NvimTreeFile_ts = { fg = palette.blue },
		NvimTreeFile_cs = { fg = palette.purple },
		NvimTreeFile_py = { fg = palette.yellow },
		NvimTreeFile_rs = { fg = palette.orange },
		NvimTreeFile_go = { fg = palette.cyan },
		NvimTreeFile_java = { fg = palette.red },
		NvimTreeFile_html = { fg = palette.red },
		NvimTreeFile_css = { fg = palette.blue },
		NvimTreeFile_json = { fg = palette.yellow },
		NvimTreeFile_md = { fg = palette.white },

		-- NeoTree
		NeoTreeFileNameJs = { fg = palette.yellow },
		NeoTreeFileNameTs = { fg = palette.blue },
		NeoTreeFileNameCs = { fg = palette.purple },
		NeoTreeFileNamePy = { fg = palette.yellow },
		NeoTreeFileNameRs = { fg = palette.orange },
		NeoTreeFileNameGo = { fg = palette.cyan },
		NeoTreeFileNameJava = { fg = palette.red },
		NeoTreeFileNameHtml = { fg = palette.red },
		NeoTreeFileNameCss = { fg = palette.blue },
		NeoTreeFileNameJson = { fg = palette.yellow },
		NeoTreeFileNameMd = { fg = palette.white },
	}

	for group, opts in pairs(emergency_highlights) do
		vim.api.nvim_set_hl(0, group, opts)
	end

	print("✅ Fix de emergencia aplicado. Reinicia tu file manager.")
end

return M
