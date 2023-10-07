-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Buffers
vim.keymap.set("n", "<leader>bo", "<Cmd>BufferLineCloseOthers<CR>", { desc = "Close other buffers" })
for i = 1, 9, 1 do
  vim.keymap.set("n", "<leader>" .. i, "<Cmd>BufferLineGoToBuffer " .. i .. "<CR>", { desc = "Go to buffer " .. i })
end

-- Gitsigns
vim.keymap.set("n", "<leader>h", require("gitsigns").preview_hunk, { desc = "Preview hunk" })

-- Telescope
vim.keymap.set("n", "<C-p>", require("telescope.builtin").git_files, { desc = "Search Git files" })
vim.keymap.set("n", "<leader>sf", require("telescope.builtin").find_files, { desc = "Search files" })
vim.keymap.set("n", "<leader>sg", require("telescope.builtin").live_grep, { desc = "Search by grep" })
vim.keymap.set("n", "<leader>sh", require("telescope.builtin").help_tags, { desc = "Search help tags" })
vim.keymap.set("n", "<leader>so", require("telescope.builtin").oldfiles, { desc = "Search old files" })
vim.keymap.set("n", "<leader>sr", require("telescope.builtin").resume, { desc = "Search resume" })
vim.keymap.set("n", "<leader>ss", require("telescope.builtin").git_status, { desc = "Search Git status" })

-- LSP
vim.keymap.set("n", "gt", vim.lsp.buf.type_definition, { desc = "Go to type definition" })
vim.keymap.set("n", "<leader>d", vim.diagnostic.open_float, { desc = "Open floating diagnostic message" })

-- Other
vim.keymap.set("n", "<C-k>", "<C-u>")
vim.keymap.set("n", "<C-j>", "<C-d>")
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set("x", "<leader>p", [["_dP]])
vim.keymap.set("t", "<Esc>", "<C-\\><C-n>")
