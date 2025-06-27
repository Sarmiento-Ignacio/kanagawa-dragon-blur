local p = require("kanagawa_dragon_blur.palette")
return {
  RainbowDelimiterRed = { fg = p.variant, bg = p.bg },
  RainbowDelimiterYellow = { fg = p.string, bg = p.bg },
  RainbowDelimiterBlue = { fg = p.blue, bg = p.bg },
  RainbowDelimiterOrange = { fg = p.operator, bg = p.bg },
  RainbowDelimiterGreen = { fg = p.enum, bg = p.bg },
  RainbowDelimiterViolet = { fg = p.function_, bg = p.bg },
  RainbowDelimiterCyan = { fg = p.cyan, bg = p.bg },
}
