require("sneto")

function ColorMyPencils(color)
   color = color or 'tokyonight'
   vim.cmd.colorscheme(color)
   vim.api.nvim_set_hl(0, "normal", {bg = "none"})
   vim.api.nvim_set_hl(0, "normalfloat", {bg = "none"})
end


ColorMyPencils()



-- Set Python-specific indentation
vim.cmd('autocmd FileType python setlocal shiftwidth=2')

-- Copying to clipboard
vim.opt.clipboard = "unnamedplus"


