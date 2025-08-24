local p = require("kanagawa_dragon_blur.palette")

return {
	-- Mini Files
	MiniFilesBorder = { link = "FloatBorder" },
	MiniFilesBorderModified = { fg = p.blue },
	MiniFilesCursorLine = { link = "CursorLine" },
	MiniFilesDirectory = { link = "Directory" },
	MiniFilesFile = { fg = p.fg },
	MiniFilesNormal = { link = "NormalFloat" },
	MiniFilesTitle = { fg = p.variable },
	MiniFilesTitleFocused = { fg = p.fg, bold = true },

	-- Mini Icons - ESTO ES LO QUE FALTA
	MiniIconsAzure = { fg = p.blue },
	MiniIconsBlue = { fg = p.blue },
	MiniIconsCyan = { fg = p.cyan },
	MiniIconsGreen = { fg = p.green },
	MiniIconsGrey = { fg = p.fg },
	MiniIconsOrange = { fg = p.orange },
	MiniIconsPurple = { fg = p.purple },
	MiniIconsRed = { fg = p.red },
	MiniIconsYellow = { fg = p.yellow },

	-- Mini Clue
	MiniClueBorder = { link = "FloatBorder" },
	MiniClueDescGroup = { link = "DiagnosticFloatingWarn" },
	MiniClueDescSingle = { link = "NormalFloat" },
	MiniClueNextKey = { link = "DiagnosticFloatingHint" },
	MiniClueNextKeyWithPostkeys = { link = "DiagnosticFloatingError" },
	MiniClueSeparator = { link = "DiagnosticFloatingInfo" },
	MiniClueTitle = { link = "FloatTitle" },

	-- Mini Completion
	MiniCompletionActiveParameter = { underline = true },

	-- Mini Cursor
	MiniCursorword = { underline = true },
	MiniCursorwordCurrent = { underline = true },

	-- Mini Deps
	MiniDepsChangeAdded = { link = "diffAdded" },
	MiniDepsChangeRemoved = { link = "diffRemoved" },
	MiniDepsHint = { fg = p.cyan },
	MiniDepsInfo = { fg = p.blue },
	MiniDepsMsgBreaking = { fg = p.yellow },
	MiniDepsPlaceholder = { link = "Comment" },
	MiniDepsTitle = { link = "Title" },
	MiniDepsTitleError = { link = "DiffDelete" },
	MiniDepsTitleSame = { link = "DiffText" },
	MiniDepsTitleUpdate = { link = "DiffAdd" },

	-- Mini Diff
	MiniDiffSignAdd = { fg = p.green },
	MiniDiffSignChange = { fg = p.yellow },
	MiniDiffSignDelete = { fg = p.red },
	MiniDiffOverAdd = { link = "DiffAdd" },
	MiniDiffOverChange = { link = "DiffText" },
	MiniDiffOverContext = { link = "DiffChange" },
	MiniDiffOverDelete = { link = "DiffDelete" },

	-- Mini Hipatterns
	MiniHipatternsFixme = { fg = p.black, bg = p.red, bold = true },
	MiniHipatternsHack = { fg = p.black, bg = p.yellow, bold = true },
	MiniHipatternsNote = { fg = p.black, bg = p.blue, bold = true },
	MiniHipatternsTodo = { fg = p.black, bg = p.cyan, bold = true },

	-- Mini Indentscope
	MiniIndentscopeSymbol = { fg = p.purple },
	MiniIndentscopePrefix = { nocombine = true },

	-- Mini Jump
	MiniJump = { link = "SpellRare" },

	-- Mini Jump2d
	MiniJump2dDim = { link = "Comment" },
	MiniJump2dSpot = { fg = p.orange, bold = true, nocombine = true },
	MiniJump2dSpotAhead = { fg = p.cyan, nocombine = true },
	MiniJump2dSpotUnique = { fg = p.purple, bold = true, nocombine = true },

	-- Mini Map
	MiniMapNormal = { link = "NormalFloat" },
	MiniMapSymbolCount = { link = "Special" },
	MiniMapSymbolLine = { link = "Title" },
	MiniMapSymbolView = { link = "Delimiter" },

	-- Mini Notify
	MiniNotifyBorder = { link = "FloatBorder" },
	MiniNotifyNormal = { link = "NormalFloat" },
	MiniNotifyTitle = { link = "FloatTitle" },

	-- Mini Operators
	MiniOperatorsExchangeFrom = { link = "IncSearch" },

	-- Mini Pick
	MiniPickBorder = { link = "FloatBorder" },
	MiniPickBorderBusy = { fg = p.yellow },
	MiniPickBorderText = { link = "FloatTitle" },
	MiniPickIconDirectory = { link = "Directory" },
	MiniPickIconFile = { link = "MiniPickNormal" },
	MiniPickHeader = { fg = p.cyan },
	MiniPickMatchCurrent = { link = "CursorLine" },
	MiniPickMatchMarked = { link = "Visual" },
	MiniPickMatchRanges = { fg = p.cyan },
	MiniPickNormal = { link = "NormalFloat" },
	MiniPickPreviewLine = { link = "CursorLine" },
	MiniPickPreviewRegion = { link = "IncSearch" },
	MiniPickPrompt = { fg = p.blue },

	-- Mini Starter
	MiniStarterCurrent = { nocombine = true },
	MiniStarterFooter = { fg = p.gray4 },
	MiniStarterHeader = { link = "Title" },
	MiniStarterInactive = { link = "Comment" },
	MiniStarterItem = { link = "Normal" },
	MiniStarterItemBullet = { link = "Delimiter" },
	MiniStarterItemPrefix = { fg = p.yellow },
	MiniStarterSection = { fg = p.green },
	MiniStarterQuery = { fg = p.blue },

	-- Mini Statusline
	MiniStatuslineDevinfo = { fg = p.fg_muted },
	MiniStatuslineFileinfo = { fg = p.fg_muted },
	MiniStatuslineFilename = { fg = p.fg_muted },
	MiniStatuslineInactive = { link = "StatusLineNC" },
	MiniStatuslineModeCommand = { fg = p.black, bg = p.operator, bold = true },
	MiniStatuslineModeInsert = { fg = p.black, bg = p.green, bold = true },
	MiniStatuslineModeNormal = { fg = p.black, bg = p.blue, bold = true },
	MiniStatuslineModeOther = { fg = p.black, bg = p.cyan, bold = true },
	MiniStatuslineModeReplace = { fg = p.black, bg = p.orange, bold = true },
	MiniStatuslineModeVisual = { fg = p.black, bg = p.purple, bold = true },

	-- Mini Surround
	MiniSurround = { link = "IncSearch" },

	-- Mini Tabline
	MiniTablineCurrent = { fg = p.fg_muted, bold = true },
	MiniTablineFill = { link = "TabLineFill" },
	MiniTablineHidden = { fg = p.gray4 },
	MiniTablineModifiedCurrent = { fg = p.fg_muted, bold = true },
	MiniTablineModifiedHidden = { fg = p.gray4 },
	MiniTablineModifiedVisible = { fg = p.gray4, bold = true },
	MiniTablineTabpagesection = { fg = p.fg, bold = true },
	MiniTablineVisible = { fg = p.gray4, bold = true },

	-- Mini Test
	MiniTestEmphasis = { bold = true },
	MiniTestFail = { fg = p.red, bold = true },
	MiniTestPass = { fg = p.green, bold = true },

	-- Mini Trailspace
	MiniTrailspace = { bg = p.red },
}
