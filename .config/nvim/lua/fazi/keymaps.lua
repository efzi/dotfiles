local keymap = vim.keymap

keymap.set('n', 'x', '"_x')

-- Increment/decrement
keymap.set('n', '+', '<C-a>')
keymap.set('n', '-', '<C-x>')

-- Delete a word backwards
keymap.set('n', 'dw', 'vb"_d')

-- Select all
keymap.set('n', '<C-a>', 'gg<S-v>G')

-- moving lines in visual mode
keymap.set("v", "K", ":m '<-2<CR>gv=gv")
keymap.set("v", "J", ":m '>+1<CR>gv=gv")

-- save 
keymap.set({"v", "n"}, '<leader>w', ':w<CR>')

-- move between splits
keymap.set("n", "<leader>h", "<C-w>h")
keymap.set("n", "<leader>l", "<C-w>l")

vim.keymap.set("n",'<leader>e', ':NvimTreeToggle<CR>')

