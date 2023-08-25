function SetupColorTheme(color)
  color = color or "github_dark_colorblind"
  vim.cmd.colorscheme(color)
  -- vim.api.nvim_command(':TransparentEnable')
end

SetupColorTheme()
