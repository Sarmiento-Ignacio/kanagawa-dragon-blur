local p = require("kanagawa_dragon_blur.palette")
return {
  AlphaHeader   = { fg = p.title, bg = "NONE" },
  AlphaFooter   = { fg = p.ui_secondary, bg = "NONE", italic = true },
  AlphaShortcut = { fg = p.enum, italic = true },
}
