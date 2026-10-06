local p = require("kanagawa_dragon_blur.palette")

return {
  MasonHeader = { fg = p.fg, bg = "NONE", bold = true },
  MasonHeaderSecondary = { fg = p.fg, bg = "NONE", bold = true },

  MasonHighlight = { fg = p.green },
  MasonHighlightBlock = { bg = p.surface, fg = p.green },
  MasonHighlightBlockBold = { bg = p.selection, fg = p.blue, bold = true },

  MasonHighlightSecondary = { fg = p.magenta },
  MasonHighlightBlockSecondary = { fg = p.blue, bg = p.surface },
  MasonHighlightBlockBoldSecondary = { fg = p.magenta, bg = p.selection, bold = true },

  MasonLink = { fg = p.cyan },

  MasonMuted = { fg = p.ui_secondary },
  MasonMutedBlock = { bg = p.surface, fg = p.ui_secondary },
  MasonMutedBlockBold = { bg = p.surface, fg = p.fg, bold = true },

  MasonError = { fg = p.red },
  MasonWarning = { fg = p.yellow },

  MasonHeading = { fg = p.magenta, bold = true },
}
