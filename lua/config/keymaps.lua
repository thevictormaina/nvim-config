-- [[ Neotree ]]
-- Toggle Neotree on the left
vim.keymap.set("n", "<leader>e", "<cmd>Neotree toggle left<CR>", { desc = "Open Neotree" })

-- Diagnostic keymaps
vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, { desc = "Go to previous [D]iagnostic message" })
vim.keymap.set("n", "]d", vim.diagnostic.goto_next, { desc = "Go to next [D]iagnostic message" })
vim.keymap.set("n", "<leader>d", vim.diagnostic.open_float, { desc = "Show [D]iagnostic error messages" })
vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Open diagnostic [Q]uickfix list" })

-- [[ Buffer Handling ]]
-- Close current buffer
vim.keymap.set("n", "<leader>bd", "<cmd>w<CR><cmd>bd<CR>", { desc = "Unload current buffer" })
-- Close all buffers
vim.keymap.set("n", "<leader>ba", "<cmd>wa<CR><cmd>%bd<CR>", { desc = "Close all buffers" })
-- Close all buffers expect current
vim.keymap.set("n", "<leader>bo", "<cmd>wa<CR><cmd>%bd | e #<CR>", { desc = "Close all buffers expect current" })
-- Go to previous buffer
vim.keymap.set("n", "<leader>bp", "<cmd>bp<CR>", { desc = "Go to previous buffer" })
vim.keymap.set("n", "[b", "<cmd>bp<CR>", { desc = "Go to previous buffer" })
-- Go to next buffer
vim.keymap.set("n", "]b", "<cmd>bn<CR>", { desc = "Go to next buffer" })

-- [[ Menu and docs navigation ]]
--
-- [[ Harpoon Mappings]]
