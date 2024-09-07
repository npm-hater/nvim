local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>ps', function()
  builtin.grep_string({ search = vim.fn.input("Grep > ") });
end)

local configs = require("nvim-treesitter.configs")

configs.setup({
  ensure_installed = { "c", "lua", "javascript", "typescript", "rust" },
  sync_install = false,
  auto_install = true,
  highlight = { enable = true },
})

