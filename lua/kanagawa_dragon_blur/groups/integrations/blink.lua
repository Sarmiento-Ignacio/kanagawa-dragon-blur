local p = require("kanagawa_dragon_blur.palette")
return {
  BlinkCmpMenu = { fg = p.fg, bg = p.surface },
  BlinkCmpMenuBorder = { fg = p.border, bg = "NONE" },
  BlinkCmpMenuSelection = { bg = p.selection, fg = p.fg, bold = true },
  BlinkCmpDoc = { fg = p.fg, bg = "NONE" },
  BlinkCmpDocBorder = { fg = p.border, bg = "NONE" },
  BlinkCmpDocSeparator = { fg = p.border, bg = "NONE" },
}
