local p = require("kanagawa_dragon_blur.palette")
return {
  FlashLabel = { fg = p.variable_special, bg = "NONE", bold = true },
  FlashBackdrop = { fg = p.comment_doc },
  FlashMatch = { fg = p.enum, bg = "NONE" },
  FlashCurrent = { fg = p.cyan, bg = p.selection },
  FlashPrompt = { bg = "NONE" },
}
