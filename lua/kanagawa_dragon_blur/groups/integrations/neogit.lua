local palette = require("kanagawa_dragon_blur.palette")

local u = require("kanagawa_dragon_blur.utils.color_utils")

local DARKEN_AMOUNT = 0.20

return {
  NeogitDiffDeleteHighlight = { bg = u.darken(palette.red, DARKEN_AMOUNT, palette.bg_dark), fg = palette.red },
  NeogitDiffDelete = { bg = u.darken(palette.red, DARKEN_AMOUNT, palette.bg_dark), fg = palette.red },
  NeogitDiffDeleteCursor = { bg = palette.red, fg = palette.bg_dark },

  NeogitDiffAddHighlight = { bg = u.darken(palette.green, DARKEN_AMOUNT, palette.bg_dark), fg = palette.green },
  NeogitDiffAdd = { bg = u.darken(palette.green, DARKEN_AMOUNT, palette.bg_dark), fg = palette.green },
  NeogitDiffAddCursor = { bg = palette.green, fg = palette.bg_dark },

  NeogitDiffContextHighlight = { bg = palette.surface },
  NeogitDiffContext = { bg = "NONE" },

  NeogitHunkHeaderHighlight = { bg = palette.selection, fg = palette.fg },
  NeogitHunkHeader = { bg = palette.surface, fg = palette.fg },
  NeogitHunkHeaderCursor = { bg = palette.selection, fg = palette.fg },

  NeogitCommitViewHeader = { bg = "NONE", fg = palette.blue },
}
