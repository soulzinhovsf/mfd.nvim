-- lualine theme for mfd-stealth colorscheme
local c = {
  bg     = '#0D1410',
  fg     = '#7A9A7A',
  dim    = '#253828',
  subtle = '#2A3A2A',
  mode   = '#1A2A1A',
  insert = '#2A3A2A',
  replace = '#2A1A1A',
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
