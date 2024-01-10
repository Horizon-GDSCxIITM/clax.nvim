function ColorMyButt(color)
	color = "gruvbox" or color
	vim.cmd.colorscheme(color) 

	vim.api.nvim_set_hl(0, "Normal", { bg = "none" }) 
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" }) 
end

ColorMyButt()
