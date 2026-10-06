# Armonización del tema

Alcance: únicamente las propuestas aprobadas para un Dragon cálido y minimalista.

- [x] Corregir sobrescrituras: separar iconos, sintaxis e integraciones responsables.
- [x] Resolver referencias a colores inexistentes según su función.
- [x] Corregir contraste en Neogit, Mason y el menú de autocompletado.
- [x] Unificar error/borrado, advertencia, éxito/añadido e información.
- [x] Usar fondos transparentes en la UI estructural y fondos discretos en selección, menús y diffs.
- [x] Suavizar la sintaxis con la paleta aprobada y separar los roles de superficie, borde y texto secundario.
- [x] Unificar la familia de títulos Markdown y reducir negritas decorativas.
- [x] Verificar referencias, ownership de highlights y colores efectivos en Neovim.
- [ ] Revisar visualmente en el LazyVim y fondo real del usuario antes de cerrar el ajuste estético.

## Verificación técnica

- 29 módulos de highlights cargados sin claves de paleta inexistentes ni grupos duplicados.
- Comentarios, estilos personalizados y overrides conservados al cargar el tema.
- Transparencia de UI principal y todas las secciones de lualine comprobada en Neovim headless.
- Contraste de selección del menú y cabeceras seleccionadas de Neogit: 6,99:1.
- Contraste del bloque secundario de Mason: 5,70:1.
- Sintaxis Lua y `git diff --check` correctos; sin ejecutar builds.

Los grupos MiniIcons ahora pertenecen exclusivamente a `mini_icons`, habilitado
por defecto para conservar su aplicación previa a través de `mini`.
