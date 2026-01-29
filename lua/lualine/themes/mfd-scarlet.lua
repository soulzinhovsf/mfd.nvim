-- lualine theme for mfd-scarlet colorscheme
local c = {
  bg      = '#0C0404',
  fg      = '#CC5545',
  dim     = '#3A1812',
  subtle  = '#2A100A',
  mode    = '#1A0808',
  insert  = '#2A100A',
  replace = '#1A0606',
}

return {
  normal = {
    a = { fg = c.fg, bg = c.mode, gui = 'bold' },
    b = { fg = c.dim, bg = c.bg },
    c = { fg = c.dim, bg = c.bg },
  },
  insert = {
    a = { fg = c.fg, bg = c.insert, gui = 'bold' },
    b = { fg = c.dim, bg = c.bg },
    c = { fg = c.dim, bg = c.bg },
  },
  visual = {
    a = { fg = c.fg, bg = c.bg, gui = 'bold' },
    b = { fg = c.dim, bg = c.bg },
    c = { fg = c.dim, bg = c.bg },
  },
  replace = {
    a = { fg = c.fg, bg = c.replace, gui = 'bold' },
    b = { fg = c.dim, bg = c.bg },
    c = { fg = c.dim, bg = c.bg },
  },
  command = {
    a = { fg = c.fg, bg = c.mode, gui = 'bold' },
    b = { fg = c.dim, bg = c.bg },
    c = { fg = c.dim, bg = c.bg },
  },
  inactive = {
    a = { fg = c.subtle, bg = c.bg },
    b = { fg = c.subtle, bg = c.bg },
    c = { fg = c.subtle, bg = c.bg },
  },
}
