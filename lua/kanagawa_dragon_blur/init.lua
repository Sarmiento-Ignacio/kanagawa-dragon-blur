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

    -- Fuerza los highlights de DevIcons después de cargar el tema
    vim.defer_fn(function()
        local ok, p = pcall(require, "kanagawa_dragon_blur.palette")
        if ok then
            vim.api.nvim_set_hl(0, "DevIconLua", { fg = p.blue })
            vim.api.nvim_set_hl(0, "DevIconJs", { fg = p.yellow })
            vim.api.nvim_set_hl(0, "DevIconTs", { fg = p.cyan })
            vim.api.nvim_set_hl(0, "DevIconJson", { fg = p.orange })
            vim.api.nvim_set_hl(0, "DevIconHtml", { fg = p.red })
            vim.api.nvim_set_hl(0, "DevIconCss", { fg = p.blue })
            vim.api.nvim_set_hl(0, "DevIconScss", { fg = p.magenta })
            vim.api.nvim_set_hl(0, "DevIconMd", { fg = p.purple })
            vim.api.nvim_set_hl(0, "DevIconVim", { fg = p.green })
            vim.api.nvim_set_hl(0, "DevIconGitignore", { fg = p.red })
            vim.api.nvim_set_hl(0, "DevIconDockerfile", { fg = p.cyan })
            vim.api.nvim_set_hl(0, "DevIconSh", { fg = p.green })
            vim.api.nvim_set_hl(0, "DevIconZsh", { fg = p.green })
            vim.api.nvim_set_hl(0, "DevIconLock", { fg = p.yellow })
            vim.api.nvim_set_hl(0, "DevIconToml", { fg = p.orange })
            vim.api.nvim_set_hl(0, "DevIconYaml", { fg = p.yellow })
            vim.api.nvim_set_hl(0, "DevIconFolder", { fg = p.blue })
            vim.api.nvim_set_hl(0, "DevIconDefault", { fg = p.fg })
            print("DEBUG: DevIcons forzados en colorscheme()")
        end
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
        vim.api.nvim_set_hl(0, "DevIconLua", { fg = p.blue })
        vim.api.nvim_set_hl(0, "DevIconJs", { fg = p.yellow })
        vim.api.nvim_set_hl(0, "DevIconTs", { fg = p.cyan })
        vim.api.nvim_set_hl(0, "DevIconJson", { fg = p.orange })
        vim.api.nvim_set_hl(0, "DevIconHtml", { fg = p.red })
        vim.api.nvim_set_hl(0, "DevIconCss", { fg = p.blue })
        vim.api.nvim_set_hl(0, "DevIconScss", { fg = p.magenta })
        vim.api.nvim_set_hl(0, "DevIconMd", { fg = p.purple })
        vim.api.nvim_set_hl(0, "DevIconVim", { fg = p.green })
        vim.api.nvim_set_hl(0, "DevIconGitignore", { fg = p.red })
        vim.api.nvim_set_hl(0, "DevIconDockerfile", { fg = p.cyan })
        vim.api.nvim_set_hl(0, "DevIconSh", { fg = p.green })
        vim.api.nvim_set_hl(0, "DevIconZsh", { fg = p.green })
        vim.api.nvim_set_hl(0, "DevIconLock", { fg = p.yellow })
        vim.api.nvim_set_hl(0, "DevIconToml", { fg = p.orange })
        vim.api.nvim_set_hl(0, "DevIconYaml", { fg = p.yellow })
        vim.api.nvim_set_hl(0, "DevIconFolder", { fg = p.blue })
        vim.api.nvim_set_hl(0, "DevIconDefault", { fg = p.fg })
        print("DEBUG: DevIcons highlights aplicados correctamente!")
    end,
})

return M
