local p = require("kanagawa_dragon_blur.palette")
return {
  FlashLabel = { fg = p.variable_special, bg = p.bg, bold = true },
  FlashBackdrop = { fg = p.comment_doc },
  FlashMatch = { fg = p.enum, bg = p.bg },
  FlashCurrent = { fg = p.cyan, bg = p.bg },
  FlashPrompt = { bg = p.bg_dark },
}
