local wezterm = require 'wezterm'
local config = {}

config.font = wezterm.font {
  family = 'Iosevka Term',
  harfbuzz_features = { 'calt=1', 'dlig=1', 'liga=0' },
}

config.color_scheme = 'Isotope (dark) (terminal.sexy)'
--config.color_scheme = 'Isotope (light) (terminal.sexy)'

--config.color_scheme = 'Equilibrium Dark (base16)'
--config.color_scheme = 'Equilibrium Gray Light (base16)'

return config
