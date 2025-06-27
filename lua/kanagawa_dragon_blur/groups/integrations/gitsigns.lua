local p = require("kanagawa_dragon_blur.palette")
return {
  GitSignsAdd = { fg = p.string },
  GitSignsChange = { fg = p.operator },
  GitSignsDelete = { fg = p.variable },
}
