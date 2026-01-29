-- lualine theme for mfd-amber colorscheme
local c = {
  bg      = '#0F0C08',
  fg      = '#CC9944',
  dim     = '#382818',
  subtle  = '#4A3820',
  mode    = '#2A1C10',
  insert  = '#3A2810',
  replace = '#2A1008',
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
