require("rose-pine").setup {
  styles = {
    italic = false
  }
}

function SetupColorTheme(color)
  color = color or "github_dark_tritanopia"
  vim.cmd.colorscheme(color)
  -- vim.api.nvim_command(':TransparentEnable')
end

SetupColorTheme() -- uncomment to disable colors

-- available themes:

-- github_dark
-- github_light
-- github_dark_dimmed
-- github_dark_default
-- github_light_default
-- github_dark_high_contrast
-- github_light_high_contrast
-- github_dark_colorblind
-- github_light_colorblind
-- github_dark_tritanopia
-- github_light_tritanopia

-- poimandres

-- rose-pine
-- rose-pine-moon
-- rose-pine-dawn

