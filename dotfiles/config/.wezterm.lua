local wezterm = require 'wezterm'
local mux = wezterm.mux
local config = wezterm.config_builder()

config.font = wezterm.font { family = 'IosevkaTerm Nerd Font'
                           , weight = 'Medium'
                           -- , harfbuzz_features = { 'calt=1' } -- This always takes precedence if set
                           }

config.color_scheme = 'Isotope (dark) (terminal.sexy)'
--config.color_scheme = 'Isotope (light) (terminal.sexy)'

--config.color_scheme = 'Equilibrium Dark (base16)'
--config.color_scheme = 'Equilibrium Gray Light (base16)'

wezterm.on('update-right-status', function(window, pane)
  local overrides = window:get_config_overrides() or {}
  local alt_sc = pane:is_alt_screen_active() or {}

  if alt_sc then
    overrides.harfbuzz_features = { 'calt=0'
                                  , 'dlig=0'
                                  , 'HSKL=1'
                                  }
  else
    overrides.harfbuzz_features = { 'calt=1' -- tried setting this to nil without success
                                  , 'dlig=0'
                                  , 'HSKL=0'
                                  }
  end
  window:set_config_overrides(overrides)
end)

config.default_domain = 'WSL:Debian'

wezterm.on('gui-startup', function(cmd)
  local tab, pane, window = mux.spawn_window(cmd or {})
  pane:split { direction = 'Left', domain = 'CurrentPaneDomain' }
  pane:split { direction = 'Top', domain = 'CurrentPaneDomain' }
end)

return config
