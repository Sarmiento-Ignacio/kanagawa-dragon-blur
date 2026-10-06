local config = require("kanagawa_dragon_blur.config")
local variant = config.variant or "blur"
local p = require("kanagawa_dragon_blur.variant")(variant)

return {
  normal = {
    a = { fg = p.ui_secondary, bg = "NONE" },
    b = { fg = p.fg, bg = "NONE" },
    c = { fg = p.fg, bg = "NONE" },
  },
  command = { a = { fg = p.accent, bg = "NONE", gui = "bold" } },
  insert = { a = { fg = p.green, bg = "NONE", gui = "bold" } },
  visual = { a = { fg = p.magenta, bg = "NONE", gui = "bold" } },
  terminal = { a = { fg = p.cyan, bg = "NONE", gui = "bold" } },
  replace = { a = { fg = p.orange, bg = "NONE", gui = "bold" } },
  inactive = {
    a = { fg = p.fg_muted, bg = "NONE" },
    b = { fg = p.fg_muted, bg = "NONE" },
    c = { fg = p.fg_muted, bg = "NONE" },
  },
}
