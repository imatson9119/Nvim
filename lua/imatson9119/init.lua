require('imatson9119.settings')
require('imatson9119.packer')
require('imatson9119.remap')

require'nvim-treesitter.configs'.setup {
  ensure_installed = { 
      "c", "lua", "bash", "c_sharp", "cmake", "cpp", "css", "gitignore", "html", "javascript", "json", 
      "json5", "make", "python", "scss", "sql", "typescript", "vim", "yaml", "java"
  },
  sync_install = false,
  auto_install = true,
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
}

vim.g["airline#extensions#tabline#enabled"] = 1

vim.cmd[[autocmd StdinReadPre * let s:std_in=1]]
vim.cmd[[autocmd VimEnter * NERDTree | if argc() > 0 || exists("s:std_in") | wincmd p | endif]]
vim.cmd[[autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif]]

require("toggleterm").setup{
    open_mapping = [[<c-\>]],
    hide_numbers = true,
    terminal_mappings = true,
    persist_mode = true,
    close_on_exit = true,
    shade_terminals = true,
    shading_factor = '2',
}
