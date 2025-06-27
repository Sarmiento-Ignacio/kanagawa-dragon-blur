local p = require("kanagawa_dragon_blur.palette")
return {
  HopNextKey = { fg = p.string },
  HopNextKey1 = { fg = p.enum },
  HopNextKey2 = { fg = p.variant },
  HopUnmatched = { fg = p.comment_doc },
  HopCursor = { fg = p.variant },
  HopPreview = { fg = p.enum },
}
