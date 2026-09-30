# Kanagawa Dragon Blur 🐉✨

Un tema Neovim inspirado en Kanagawa Dragon, con un toque blur y soporte para integraciones modernas. Perfecto para largas sesiones de código con estilo y sin cansar la vista.

## 🚀 Instalación en LazyVim

1. **Agrega el plugin a tu lista de plugins** (por ejemplo, en `~/.config/nvim/lua/plugins/colorscheme.lua`):

```lua
{
  dir = "~/ruta/a/kanagawa-dragon-blur", -- Cambia esto por la ruta real
  name = "kanagawa-dragon-blur",
  priority = 1000,
}
```

## Statusline transparente

El tema deja sin fondo la statusline y todas las secciones de lualine; el
indicador de modo conserva su color en el texto. Para seleccionar explícitamente
el tema en LazyVim, agrega este archivo `lua/plugins/lualine.lua`:

```lua
return {
  {
    "nvim-lualine/lualine.nvim",
    opts = {
      options = { theme = "kanagawa-dragon-blur" },
    },
  },
}
```

La transparencia real depende de tu terminal. Si un componente de lualine tiene
un `color.bg` personalizado, ese fondo puede sobrescribir el del tema.
