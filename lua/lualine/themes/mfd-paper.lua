-- lualine theme for mfd-paper colorscheme
local c = {
  bg      = '#BBC5B7',
  fg      = '#002611',
  dim     = '#8A9A88',
  subtle  = '#A5B2A2',
  mode    = '#B0BAB0',
  insert  = '#A0B0A0',
  replace = '#B5A5A5',
}

return {
  normal = {
    a = { fg = c.fg, bg = c.mode, gui = 'bold' },
    b = { fg = c.fg, bg = c.bg },
    c = { fg = c.dim, bg = c.bg },
  },
  insert = {
    a = { fg = c.fg, bg = c.insert, gui = 'bold' },
    b = { fg = c.fg, bg = c.bg },
    c = { fg = c.dim, bg = c.bg },
  },
  visual = {
    a = { fg = c.fg, bg = c.subtle, gui = 'bold' },
    b = { fg = c.fg, bg = c.bg },
    c = { fg = c.dim, bg = c.bg },
  },
  replace = {
    a = { fg = c.fg, bg = c.replace, gui = 'bold' },
    b = { fg = c.fg, bg = c.bg },
    c = { fg = c.dim, bg = c.bg },
  },
  command = {
    a = { fg = c.fg, bg = c.mode, gui = 'bold' },
    b = { fg = c.fg, bg = c.bg },
    c = { fg = c.dim, bg = c.bg },
  },
  inactive = {
    a = { fg = c.dim, bg = c.bg },
    b = { fg = c.dim, bg = c.bg },
    c = { fg = c.dim, bg = c.bg },
  },
}
