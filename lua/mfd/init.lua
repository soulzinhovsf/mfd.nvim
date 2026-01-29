-- MFD: Military Flight Display colorscheme for Neovim
-- Monotone themes using text decoration for syntax highlighting

local M = {}

-- Color palettes for each variant
M.palettes = {
  mfd = {
    bg       = '#7A8B69',
    fg       = '#1E2D1E',
    dim      = '#4A5B3A',
    bright   = '#0D1D0D',
    subtle   = '#8A9B70',
    visual   = '#6A7B59',
    cursor   = '#6A7B59',
    border   = '#5A6B4A',
    float_bg = '#5A6B4A',
  },
  ['mfd-amber'] = {
    bg       = '#8B7B55',
    fg       = '#2D2510',
    dim      = '#5A4D35',
    bright   = '#1D1508',
    subtle   = '#9B8B65',
    visual   = '#5B4B25',
    cursor   = '#3D3520',
    border   = '#4D4530',
    float_bg = '#6B5B35',
  },
  ['mfd-slate'] = {
    bg       = '#6B7A8B',
    fg       = '#1A2530',
    dim      = '#4A5560',
    bright   = '#0A1520',
    subtle   = '#7B8A9B',
    visual   = '#3B4A5B',
    cursor   = '#2A3540',
    border   = '#3A4550',
    float_bg = '#4B5A6B',
  },
  ['mfd-dusk'] = {
    bg       = '#7A6B8B',
    fg       = '#201A2D',
    dim      = '#4A4560',
    bright   = '#100A1D',
    subtle   = '#8A7B9B',
    visual   = '#4A3B5B',
    cursor   = '#302A3D',
    border   = '#403A4D',
    float_bg = '#5A4B6B',
  },
}

-- Mode colors for cursor/lualine animations
M.mode_colors = {
  mfd = {
    normal  = '#1E2D1E',
    insert  = '#2D4D2D',
    visual  = '#0D1D0D',
    replace = '#3D2D1D',
    command = '#1E2D1E',
  },
  ['mfd-amber'] = {
    normal  = '#2D2510',
    insert  = '#4D4520',
    visual  = '#1D1508',
    replace = '#4D2D10',
    command = '#2D2510',
  },
  ['mfd-slate'] = {
    normal  = '#1A2530',
    insert  = '#2A3550',
    visual  = '#0A1520',
    replace = '#2A2530',
    command = '#1A2530',
  },
  ['mfd-dusk'] = {
    normal  = '#201A2D',
    insert  = '#302A4D',
    visual  = '#100A1D',
    replace = '#30202D',
    command = '#201A2D',
  },
}

-- Get palette for current or specified colorscheme
function M.get_palette(scheme)
  scheme = scheme or vim.g.colors_name or 'mfd'
  return M.palettes[scheme] or M.palettes.mfd
end

-- Get mode colors for current or specified colorscheme
function M.get_mode_colors(scheme)
  scheme = scheme or vim.g.colors_name or 'mfd'
  return M.mode_colors[scheme] or M.mode_colors.mfd
end

-- Check if current colorscheme is an MFD variant
function M.is_mfd()
  local scheme = vim.g.colors_name or ''
  return scheme:match('^mfd') ~= nil
end

-- Lualine theme builder
function M.lualine_theme(scheme)
  local p = M.get_palette(scheme)
  local mc = M.get_mode_colors(scheme)

  return {
    normal = {
      a = { bg = mc.normal, fg = p.bg, gui = 'bold' },
      b = { bg = p.float_bg, fg = mc.normal },
      c = { bg = p.float_bg, fg = p.dim },
    },
    insert = {
      a = { bg = mc.insert, fg = p.bg, gui = 'bold' },
      b = { bg = p.float_bg, fg = mc.insert },
      c = { bg = p.float_bg, fg = p.dim },
    },
    visual = {
      a = { bg = mc.visual, fg = p.bg, gui = 'bold' },
      b = { bg = p.float_bg, fg = mc.visual },
      c = { bg = p.float_bg, fg = p.dim },
    },
    replace = {
      a = { bg = mc.replace, fg = p.bg, gui = 'bold' },
      b = { bg = p.float_bg, fg = mc.replace },
      c = { bg = p.float_bg, fg = p.dim },
    },
    command = {
      a = { bg = mc.command, fg = p.bg, gui = 'bold' },
      b = { bg = p.float_bg, fg = mc.command },
      c = { bg = p.float_bg, fg = p.dim },
    },
    inactive = {
      a = { bg = p.float_bg, fg = p.dim },
      b = { bg = p.float_bg, fg = p.dim },
      c = { bg = p.float_bg, fg = p.dim },
    },
  }
end

return M
