local Plug = vim.fn['plug#']
vim.call('plug#begin', '~/.vim.plugged')
	Plug 'https://github.com/rafi/awesome-vim-colorschemes'
	Plug 'https://github.com/ryanoasis/vim-devicons'
	Plug 'akinsho/bufferline.nvim'
	Plug 'windwp/nvim-autopairs'
	Plug 'nvim-lualine/lualine.nvim'
	Plug 'voldikss/vim-floaterm'
	Plug 'ms-jpq/chadtree'
	Plug 'kdheepak/lazygit.nvim'
	Plug 'nvim-treesitter/nvim-treesitter'
	--Plug 'numToStr/FTerm.nvim'
vim.call('plug#end')
