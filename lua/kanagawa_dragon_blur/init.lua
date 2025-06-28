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

    -- Fuerza los highlights de DevIcons después de cargar el tema con colores vibrantes
    vim.defer_fn(function()
        vim.api.nvim_set_hl(0, "DevIconLua", { fg = "#7fb4ca", bold = true })
        vim.api.nvim_set_hl(0, "DevIconJs", { fg = "#e6c384", bold = true })
        vim.api.nvim_set_hl(0, "DevIconTs", { fg = "#7aa89f", bold = true })
        vim.api.nvim_set_hl(0, "DevIconJson", { fg = "#ffa066", bold = true })
        vim.api.nvim_set_hl(0, "DevIconHtml", { fg = "#e46876", bold = true })
        vim.api.nvim_set_hl(0, "DevIconCss", { fg = "#7fb4ca", bold = true })
        vim.api.nvim_set_hl(0, "DevIconScss", { fg = "#938aa9", bold = true })
        vim.api.nvim_set_hl(0, "DevIconMd", { fg = "#938aa9", bold = true })
        vim.api.nvim_set_hl(0, "DevIconVim", { fg = "#87a987", bold = true })
        vim.api.nvim_set_hl(0, "DevIconGitignore", { fg = "#e46876", bold = true })
        vim.api.nvim_set_hl(0, "DevIconDockerfile", { fg = "#7aa89f", bold = true })
        vim.api.nvim_set_hl(0, "DevIconSh", { fg = "#87a987", bold = true })
        vim.api.nvim_set_hl(0, "DevIconZsh", { fg = "#87a987", bold = true })
        vim.api.nvim_set_hl(0, "DevIconLock", { fg = "#e6c384", bold = true })
        vim.api.nvim_set_hl(0, "DevIconToml", { fg = "#ffa066", bold = true })
        vim.api.nvim_set_hl(0, "DevIconYaml", { fg = "#e6c384", bold = true })
        vim.api.nvim_set_hl(0, "DevIconFolder", { fg = "#7fb4ca", bold = true })
        vim.api.nvim_set_hl(0, "DevIconDefault", { fg = "#c5c9c5", bold = true })
        print("DEBUG: DevIcons forzados en colorscheme() con colores vibrantes")
    end, 50)
end

M.setup = require("kanagawa_dragon_blur.config").setup

-- Autocmd para forzar highlights de DevIcons cada vez que se aplique el tema
vim.api.nvim_create_autocmd("ColorScheme", {
    pattern = "kanagawa-dragon-blur",
    callback = function()
        print("DEBUG: Kanagawa Dragon Blur autocmd ejecutándose...")
        local p = require("kanagawa_dragon_blur.palette")
        print("DEBUG: Paleta cargada, aplicando highlights de DevIcons...")
        vim.api.nvim_set_hl(0, "DevIconLua", { fg = "#7fb4ca", bold = true })
        vim.api.nvim_set_hl(0, "DevIconJs", { fg = "#e6c384", bold = true })
        vim.api.nvim_set_hl(0, "DevIconTs", { fg = "#7aa89f", bold = true })
        vim.api.nvim_set_hl(0, "DevIconJson", { fg = "#ffa066", bold = true })
        vim.api.nvim_set_hl(0, "DevIconHtml", { fg = "#e46876", bold = true })
        vim.api.nvim_set_hl(0, "DevIconCss", { fg = "#7fb4ca", bold = true })
        vim.api.nvim_set_hl(0, "DevIconScss", { fg = "#938aa9", bold = true })
        vim.api.nvim_set_hl(0, "DevIconMd", { fg = "#938aa9", bold = true })
        vim.api.nvim_set_hl(0, "DevIconVim", { fg = "#87a987", bold = true })
        vim.api.nvim_set_hl(0, "DevIconGitignore", { fg = "#e46876", bold = true })
        vim.api.nvim_set_hl(0, "DevIconDockerfile", { fg = "#7aa89f", bold = true })
        vim.api.nvim_set_hl(0, "DevIconSh", { fg = "#87a987", bold = true })
        vim.api.nvim_set_hl(0, "DevIconZsh", { fg = "#87a987", bold = true })
        vim.api.nvim_set_hl(0, "DevIconLock", { fg = "#e6c384", bold = true })
        vim.api.nvim_set_hl(0, "DevIconToml", { fg = "#ffa066", bold = true })
        vim.api.nvim_set_hl(0, "DevIconYaml", { fg = "#e6c384", bold = true })
        vim.api.nvim_set_hl(0, "DevIconFolder", { fg = "#7fb4ca", bold = true })
        vim.api.nvim_set_hl(0, "DevIconDefault", { fg = "#c5c9c5", bold = true })
        print("DEBUG: DevIcons highlights aplicados correctamente!")
    end,
})

return M
