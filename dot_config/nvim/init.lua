local o = vim.opt
local g = vim.g
local key = vim.keymap.set

-- Mouse support
o.mouse = a

-- Line numbers
o.number = true

-- Break lines without breaking words.
o.wrap = true
o.linebreak = true
g.nolist = true

-- Set tabs to 4 spaces.
o.tabstop = 4
o.softtabstop = 0
o.shiftwidth = 4
o.expandtab = true
o.smarttab = true

-- Set enconding.
o.encoding = "utf-8"

-- No delay.
o.updatetime = 300

-- Scroll padding.
o.scrolloff = 8
o.hidden = true

-- Colorscheme.
o.syntax = on
--o.termguicolors = true

-- Keybindings.
key('i', '<C-k>', '<Esc>')
