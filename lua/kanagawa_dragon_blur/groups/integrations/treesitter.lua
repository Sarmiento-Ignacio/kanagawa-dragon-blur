local p = require("kanagawa_dragon_blur.palette")
local config = require("kanagawa_dragon_blur.config")
local styles = vim.tbl_map(function(value)
  return setmetatable(value, {
    __add = function(a, b)
      return vim.tbl_extend("force", a, b)
    end,
  })
end, config.styles)
return {
  ["@boolean"] = { fg = p.boolean } + styles.booleans,
  ["@constructor"] = { fg = p.constructor },
  ["@constant.builtin"] = { fg = p.constant },
  ["@keyword.function"] = { fg = p.keyword } + styles.functions,
  ["@namespace"] = { fg = p.primary, italic = true },
  ["@parameter"] = { fg = p.variable_parameter },
  ["@property"] = { fg = p.property },
  ["@punctuation"] = { fg = p.punctuation },
  ["@punctuation.delimiter"] = { fg = p.delimiter },
  ["@punctuation.bracket"] = { fg = p.bracket },
  ["@punctuation.special"] = { fg = p.punctuation },
  ["@string.documentation"] = { fg = p.comment_doc } + styles.comments,
  ["@string.regex"] = { fg = p.string_regex },
  ["@string.escape"] = { fg = p.string_escape },
  ["@string.special.url"] = { fg = p.link_uri, underline = true },
  ["@symbol"] = { fg = p.enum },
  ["@tag"] = { fg = p.tag },
  ["@tag.attribute"] = { fg = p.attribute, italic = true },
  ["@tag.delimiter"] = { fg = p.delimiter },
  ["@type.builtin"] = { fg = p.type },
  ["@variable"] = { fg = p.variable } + styles.variables,
  ["@variable.builtin"] = { fg = p.variable_special } + styles.variables,
  ["@variable.parameter"] = { fg = p.variable_parameter } + styles.variables,
  ["@constructor.javascript"] = { fg = p.constructor },
  ["@keyword.clojure"] = { fg = p.keyword } + styles.keywords,
  ["@keyword.import"] = { fg = p.keyword } + styles.keywords,
  ["@text.underline"] = { link = "Underlined" },
  ["@text.strong"] = { bold = true },
  ["@text.strikethrough"] = { strikethrough = true },
  ["@text.italic"] = { italic = true },
  ["@markup.heading"] = { fg = p.title, bold = true },
  ["@markup.heading.1"] = { fg = p.title, bold = true },
  ["@markup.heading.1.marker"] = { link = "@comment" },
  ["@markup.heading.2"] = { fg = p.title, bold = true },
  ["@markup.heading.2.marker"] = { link = "@comment" },
  ["@markup.heading.3"] = { fg = p.title, bold = true },
  ["@markup.heading.3.marker"] = { link = "@comment" },
  ["@markup.heading.4"] = { fg = p.title, bold = true },
  ["@markup.heading.4.marker"] = { link = "@comment" },
  ["@markup.heading.5"] = { fg = p.title, bold = true },
  ["@markup.heading.5.marker"] = { link = "@comment" },
  ["@markup.heading.6"] = { fg = p.title, bold = true },
  ["@markup.heading.6.marker"] = { link = "@comment" },
  ["@markup.link"] = { fg = p.link_text },
  ["@markup.link.label"] = { fg = p.link_text },
  ["@markup.link.url"] = { fg = p.link_uri },
  ["@markup.list"] = { fg = p.enum, bold = true },
  ["@markup.list.checked"] = { fg = p.enum },
  ["@markup.list.unchecked"] = { fg = p.enum },
  ["@markup.raw.block"] = { fg = p.primary },
  ["@markup.raw.delimiter"] = { fg = p.primary },
  ["@markup.quote"] = { fg = p.comment },
  ["@markup.list.checked.markdown"] = { fg = p.string },
  ["@markup.underline"] = { link = "@text.underline" },
  ["@markup.strong"] = { link = "@text.strong" },
  ["@markup.italic"] = { link = "@text.italic" },
  ["@markup.strikethrough"] = { link = "@text.strikethrough" },
}
