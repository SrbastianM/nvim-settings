local M = {}

M.setup = function()
  -- Definir algunos mappings de teclas
  vim.api.nvim_set_keymap('n', '<leader>ff', ':Telescope find_files<CR>', { noremap = true, silent = true })

  -- Añadir más mappings aquí
  vim.keymap.set({"n", "v", "i"}, "<C-b>", "<cmd>NvimTreeToggle<cr>", { noremap = true, silent = true })
  
  -- Mapeo corregido para Ctrl + o para copiar la línea completa
  vim.keymap.set({"n", "v"}, "<C-o>", "yy", { noremap = true, silent = true })
  
  -- Mapeo para borrar una línea completa
  vim.keymap.set("n", "<leader>d", "dd", { noremap = true, silent = true })
end

return M
