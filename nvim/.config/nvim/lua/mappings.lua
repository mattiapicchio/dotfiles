require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- Save file
vim.keymap.set("n", "<leader>s", "<cmd>w<cr>", { noremap = true, silent = true, desc = "Save file" })

-- Conform
-- Keybinding to format the current file
vim.keymap.set("n", "<leader>l", function()
  require("conform").format { async = true }
end, { noremap = true, silent = true, desc = "Format file" })

-- Telescope
vim.keymap.set("n", "<leader>ft", "<cmd>Telescope live_grep<cr>", { desc = "Find text in all files" })
-- Telescope: Find only folders
vim.keymap.set("n", "<leader>fd", "<cmd>Telescope find_files find_command=fd,--type,d<cr>", { desc = "Find folders" })


-- Unmap terminal keys
vim.keymap.del("n", "<leader>h") -- Unmap horizontal terminal
vim.keymap.del("n", "<leader>v") -- Unmap vertical terminal


-- Navigate to the next diagnostic
-- map("n", "]d", vim.diagnostic.goto_next, { noremap = true, silent = true, desc = "Next diagnostic" })

-- Navigate to the previous diagnostic
-- map("n", "[d", vim.diagnostic.goto_prev, { noremap = true, silent = true, desc = "Previous diagnostic" })

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

-- Lsp code actions
vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "Code actions" })

-- Disable default navigation keys by overriding them with <Nop>
vim.keymap.set("n", "h", "<Nop>", { desc = "Disable 'h' for moving left" })
vim.keymap.set("n", "j", "<Nop>", { desc = "Disable 'j' for moving down" })
vim.keymap.set("v", "h", "<Nop>", { desc = "Disable 'h' in visual mode" })
vim.keymap.set("v", "j", "<Nop>", { desc = "Disable 'j' in visual mode" })
vim.keymap.set("o", "h", "<Nop>", { desc = "Disable 'h' in operator-pending mode" })
vim.keymap.set("o", "j", "<Nop>", { desc = "Disable 'j' in operator-pending mode" })
-- Remap navigation keys for Swedish keyboard
vim.keymap.set("n", "k", "h", { desc = "Move left" }) -- 'k' moves left
vim.keymap.set("n", "l", "j", { desc = "Move down" }) -- 'l' moves down
vim.keymap.set("n", "ö", "k", { desc = "Move up" })  -- 'ö' moves up
vim.keymap.set("n", "ä", "l", { desc = "Move right" }) -- 'ä' moves right

vim.keymap.set("v", "k", "h", { desc = "Move left (visual)" })
vim.keymap.set("v", "l", "j", { desc = "Move down (visual)" })
vim.keymap.set("v", "ö", "k", { desc = "Move up (visual)" })
vim.keymap.set("v", "ä", "l", { desc = "Move right (visual)" })

vim.keymap.set("o", "k", "h", { desc = "Move left (operator)" })
vim.keymap.set("o", "l", "j", { desc = "Move down (operator)" })
vim.keymap.set("o", "ö", "k", { desc = "Move up (operator)" })
vim.keymap.set("o", "ä", "l", { desc = "Move right (operator)" })

