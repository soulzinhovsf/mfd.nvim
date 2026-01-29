# mfd.nvim

Monotone colorschemes for Neovim. Aesthetic inspiration from [U.S. Graphics Company](https://usgraphics.com) — thanks for the beautiful work.

Seven variants, from phosphor CRTs to high contrast paper.

## Themes

### mfd / mfd-dark
Olive sage.

![mfd](screenshots/mfd.png)
![mfd-dark](screenshots/mfd-dark.png)

### mfd-stealth
Green phosphor.

![mfd-stealth](screenshots/mfd-stealth.png)

### mfd-amber
Amber phosphor.

![mfd-amber](screenshots/mfd-amber.png)

### mfd-mono
White phosphor.

![mfd-mono](screenshots/mfd-mono.png)

### mfd-scarlet
Deep red.

![mfd-scarlet](screenshots/mfd-scarlet.png)

### mfd-paper
High contrast terminal.

![mfd-paper](screenshots/mfd-paper.png)

## Installation

```lua
-- lazy.nvim
{
  'kungfusheep/mfd.nvim',
  lazy = false,
  priority = 1000,
  config = function()
    vim.cmd('colorscheme mfd-stealth')
  end,
}
```

## Approach

Syntax differentiation through text decoration, not colour:

- **Bold** — keywords, functions
- *Italic* — strings, comments, parameters
- <ins>Underline</ins> — types, structures

Lualine themes are included for each variant.
