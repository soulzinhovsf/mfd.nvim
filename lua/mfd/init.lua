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
  ['mfd-dark'] = {
    bg       = '#1E2D1E',
    fg       = '#8A9B70',
    dim      = '#3A4A3A',
    bright   = '#A0B180',
    subtle   = '#2E3E2E',
    visual   = '#2A3D2A',
    cursor   = '#2A3D2A',
    border   = '#3A4B2A',
    float_bg = '#253525',
  },
  ['mfd-stealth'] = {
    bg       = '#0D1410',
    fg       = '#7A9A7A',
    dim      = '#253828',
    bright   = '#9ABB9A',
    subtle   = '#2A3A2A',
    visual   = '#1A2A1A',
    cursor   = '#151F18',
    border   = '#2A3A2A',
    float_bg = '#101810',
  },
  ['mfd-amber'] = {
    bg       = '#0F0C08',
    fg       = '#CC9944',
    dim      = '#382818',
    bright   = '#FFBB55',
    subtle   = '#4A3820',
    visual   = '#2A1C10',
    cursor   = '#1A1408',
    border   = '#3A2810',
    float_bg = '#141008',
  },
  ['mfd-mono'] = {
    bg       = '#08080C',
    fg       = '#D0D0D8',
    dim      = '#282830',
    bright   = '#F0F0FF',
    subtle   = '#383840',
    visual   = '#1A1A22',
    cursor   = '#101014',
    border   = '#2A2A32',
    float_bg = '#0C0C10',
  },
  ['mfd-scarlet'] = {
    bg       = '#0C0404',
    fg       = '#CC5545',
    dim      = '#3A1812',
    bright   = '#DD6655',
    subtle   = '#2A100A',
    visual   = '#1A0808',
    cursor   = '#140606',
    border   = '#2A100A',
    float_bg = '#100505',
  },
  ['mfd-paper'] = {
    bg       = '#BBC5B7',
    fg       = '#002611',
    dim      = '#8A9A88',
    bright   = '#001008',
    subtle   = '#A5B2A2',
    visual   = '#A0B0A0',
    cursor   = '#B0BAB0',
    border   = '#95A592',
    float_bg = '#C5CFC2',
  },
  ['mfd-nvg'] = {
    bg       = '#162014',
    fg       = '#78B858',
    dim      = '#4A7A3A',
    bright   = '#90D868',
    subtle   = '#2E4822',
    visual   = '#1E3018',
    cursor   = '#1A2816',
    border   = '#3A5C2E',
    float_bg = '#182416',
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
  ['mfd-dark'] = {
    normal  = '#8A9B70',
    insert  = '#A0B180',
    visual  = '#6A7B50',
    replace = '#9B8A60',
    command = '#8A9B70',
  },
  ['mfd-stealth'] = {
    normal  = '#253828',
    insert  = '#354838',
    visual  = '#152818',
    replace = '#382828',
    command = '#253828',
  },
  ['mfd-amber'] = {
    normal  = '#2D2510',
    insert  = '#4D4520',
    visual  = '#1D1508',
    replace = '#4D2D10',
    command = '#2D2510',
  },
  ['mfd-mono'] = {
    normal  = '#282830',
    insert  = '#383848',
    visual  = '#181820',
    replace = '#382830',
    command = '#282830',
  },
  ['mfd-scarlet'] = {
    normal  = '#3A1812',
    insert  = '#4A2822',
    visual  = '#2A0808',
    replace = '#3A1818',
    command = '#3A1812',
  },
  ['mfd-paper'] = {
    normal  = '#002611',
    insert  = '#103620',
    visual  = '#001608',
    replace = '#261100',
    command = '#002611',
  },
  ['mfd-nvg'] = {
    normal  = '#3A6030',
    insert  = '#4A7040',
    visual  = '#2A5020',
    replace = '#504830',
    command = '#3A6030',
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
