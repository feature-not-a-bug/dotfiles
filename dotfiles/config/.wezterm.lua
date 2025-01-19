local wezterm = require 'wezterm'
local config = {}

config.font = wezterm.font ('Iosevka Term', { weight = 'Medium' })

config.color_scheme = 'Isotope (dark) (terminal.sexy)'
--config.color_scheme = 'Isotope (light) (terminal.sexy)'

--config.color_scheme = 'Equilibrium Dark (base16)'
--config.color_scheme = 'Equilibrium Gray Light (base16)'

return config
