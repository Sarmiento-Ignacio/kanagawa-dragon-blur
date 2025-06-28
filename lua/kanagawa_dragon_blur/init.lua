local M = {}

function M.colorscheme()
    vim.cmd("hi clear")
    if vim.fn.exists("syntax_on") then
        vim.cmd("syntax reset")
    end
    vim.o.background = "dark"
    vim.o.termguicolors = true
    vim.g.colors_name = "kanagawa-dragon-blur"
    require("kanagawa_dragon_blur.highlights").setup()
end

M.setup = require("kanagawa_dragon_blur.config").setup

return M
