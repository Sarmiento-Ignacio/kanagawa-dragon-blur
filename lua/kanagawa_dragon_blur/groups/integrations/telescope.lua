local p = require("kanagawa_dragon_blur.palette")

return {
    TelescopeBorder        = { fg = p.bg_dark, bg = "NONE" },
    TelescopeNormal        = { fg = p.fg, bg = "NONE" },
    TelescopePreviewTitle  = { fg = p.bg_dark, bg = "NONE" },
    TelescopeResultsTitle  = { fg = p.bg_dark, bg = "NONE" },
    TelescopePromptTitle   = { fg = p.fg, bg = "NONE", italic = true },
    TelescopePromptBorder  = { fg = p.gray3, bg = "NONE" },
    TelescopePromptNormal  = { fg = p.fg, bg = "NONE" },
    TelescopePromptCounter = { fg = p.gray4, bg = "NONE" },
    TelescopeMatching      = { fg = p.yellow, bold = true },
}
