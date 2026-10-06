local p = require("kanagawa_dragon_blur.palette")

return {
    TelescopeBorder        = { fg = p.border, bg = "NONE" },
    TelescopeNormal        = { fg = p.fg, bg = "NONE" },
    TelescopePreviewTitle  = { fg = p.fg, bg = "NONE" },
    TelescopeResultsTitle  = { fg = p.fg, bg = "NONE" },
    TelescopePromptTitle   = { fg = p.fg, bg = "NONE", italic = true },
    TelescopePromptBorder  = { fg = p.border, bg = "NONE" },
    TelescopePromptNormal  = { fg = p.fg, bg = "NONE" },
    TelescopePromptCounter = { fg = p.ui_secondary, bg = "NONE" },
    TelescopeMatching      = { fg = p.yellow, bold = true },
}
