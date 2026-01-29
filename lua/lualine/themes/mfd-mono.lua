-- lualine theme for mfd-mono colorscheme
local c = {
  bg      = '#08080C',
  fg      = '#D0D0D8',
  dim     = '#282830',
  subtle  = '#383840',
  mode    = '#1A1A22',
  insert  = '#2A2A32',
  replace = '#221A1A',
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
