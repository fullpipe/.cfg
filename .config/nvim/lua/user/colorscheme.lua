local colorscheme = "tokyonight"

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
  return
end

vim.g.tokyonight_transparent_sidebar = false
vim.g.tokyonight_transparent = false
vim.g.tokyonight_dark_float = false
vim.opt.background = "dark"


-- local colorscheme = "tokyonight-night"

-- local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
-- if not status_ok then
--   return
-- end
