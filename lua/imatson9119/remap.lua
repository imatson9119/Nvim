-- Use this file to remap different keybinds

local nnoremap = require('imatson9119.keymap').nnoremap

-- Leader key is whatever key you start commands with (originally :)
nnoremap("<leader>pv", "<cmd>w<CR><cmd>Ex<CR>")
nnoremap("<C-h>", "<C-w>h") 
nnoremap("<C-j>", "<C-w>j") 
nnoremap("<C-k>", "<C-w>k") 
nnoremap("<C-l>", "<C-w>l") 

-- Nerdtree remappings
nnoremap("<leader>n", "<cmd>NERDTreeFocus<CR>")
nnoremap("<C-n>", "<cmd>NERDTree<CR>")
nnoremap("<C-t>", "<cmd>NERDTreeToggle<CR>")
nnoremap("<C-f>", "<cmd>NERDTreeFind<CR>")

-- Custom new terminal command
-- nnoremap("<Leader>t", "<cmd>botright 20sp term://bash<CR>i")

function _G.set_terminal_keymaps()
  local opts = {buffer = 0}
  vim.keymap.set('t', '<esc>', [[<C-\><C-n>]], opts)
  vim.keymap.set('t', 'jk', [[<C-\><C-n>]], opts)
  vim.keymap.set('t', '<C-h>', [[<Cmd>wincmd h<CR>]], opts)
  vim.keymap.set('t', '<C-j>', [[<Cmd>wincmd j<CR>]], opts)
  vim.keymap.set('t', '<C-k>', [[<Cmd>wincmd k<CR>]], opts)
  vim.keymap.set('t', '<C-l>', [[<Cmd>wincmd l<CR>]], opts)
end

-- if you only want these mappings for toggle term use term://*toggleterm#* instead
vim.cmd('autocmd! TermOpen term://* lua set_terminal_keymaps()')
