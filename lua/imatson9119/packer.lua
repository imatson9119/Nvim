-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}
  use "lukas-reineke/indent-blankline.nvim"
  use 'vim-airline/vim-airline'
  use 'morhetz/gruvbox'
  use 'preservim/nerdtree'
  use {"akinsho/toggleterm.nvim", tag = 'v2.*', config = function()
    require("toggleterm").setup()
  end}
end)
