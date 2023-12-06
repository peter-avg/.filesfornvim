local opts = {noremap = true, silent = true}

local term_opts = {silent = true}

local keymap = vim.api.nvim_set_keymap

--leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader= " "
vim.g.mapcallleader = " "

--Window Navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

--Window Navigation Ελληνικά
keymap("n", "<C-η>", "<C-w>h", opts)
keymap("n", "<C-ξ>", "<C-w>j", opts)
keymap("n", "<C-κ>", "<C-w>k", opts)
keymap("n", "<C-λ>", "<C-w>l", opts)

--LaTeX
keymap("n","<leader>l",":!latexmk -pvc -pdf<CR>",opts)

--LaTeX Ελληνικά
keymap("n","<leader>λ",":!latexmk -pvc -pdf<CR>",opts)

--NRW
keymap("n", "<leader>e", ":Lex 30<cr>", opts)

--NRW Ελληνικά
keymap("n", "<leader>ε", ":Lex 30<cr>", opts)

--LSP
vim.keymap.set("n", "<leader>vrr", vim.lsp.buf.references, opts)
vim.keymap.set("n", "<leader>vrn", vim.lsp.buf.rename, opts)
vim.keymap.set("n", "<leader>vd", vim.diagnostic.open_float, opts)

--LSP Ελληνικά
vim.keymap.set("n", "<leader>ωρρ", vim.lsp.buf.references, opts)
vim.keymap.set("n", "<leader>ωρν", vim.lsp.buf.rename, opts)
vim.keymap.set("n", "<leader>ωδ", vim.diagnostic.open_float, opts)

--Quitting and Saving
keymap("n", "<leader>q", ":q<cr>", opts)
keymap("n", "<leader>Q", ":q!<cr>", opts)
keymap("n", "<leader>wq", ":wq<cr>", opts)
keymap("n", "<leader>w", ":w<cr>", opts)
keymap("n", "<leader>fq", ":qa<cr>", opts)

--Quitting and Saving Ελληνικά
keymap("n", "<leader>;", ":q<cr>", opts)
keymap("n", "<leader>:", ":q!<cr>", opts)
keymap("n", "<leader>ς;", ":wq<cr>", opts)
keymap("n", "<leader>ς", ":w<cr>", opts)
keymap("n", "<leader>φ;", ":qa<cr>", opts)

--Tabs
keymap("n", "<leader>t", ":tabedit<CR>", opts)
keymap("n", "<leader>vs", ":vsp<CR><C-l>", opts)
keymap("n", "<leader>hs", ":sp<CR>", opts)
keymap("n", "<leader>,", ":vertical resize -10<CR>", opts)
keymap("n", "<leader>.", ":vertical resize +10<CR>", opts)

--Tabs Ελληνικά
keymap("n", "<leader>τ", ":tabedit<CR>", opts)
keymap("n", "<leader>ωσ", ":vsp<CR><C-l>", opts)
keymap("n", "<leader>ησ", ":sp<CR>", opts)
keymap("n", "<leader>,", ":vertical resize -10<CR>", opts)
keymap("n", "<leader>.", ":vertical resize +10<CR>", opts)

-- next greatest remap ever : asbjornHaland
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])
vim.keymap.set("n", "<leader>p", [["_dP]])

-- next greatest remap ever : asbjornHaland Ελληνικά
vim.keymap.set({"n", "v"}, "<leader>υ", [["+y]])
vim.keymap.set("n", "<leader>Υ", [["+Y]])
vim.keymap.set("n", "<leader>π", [["_dP]])

--Jumping Jacks 
keymap("n", "<C-d>", "<C-d>zz", opts)
keymap("n", "<C-u>", "<C-u>zz", opts)

--Jumping Jacks Ελληνικά
keymap("n", "<C-δ>", "<C-d>zz", opts)
keymap("n", "<C-θ>", "<C-u>zz", opts)

--indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

--indent mode Ελληνικά
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Move text up and down
keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
keymap("x", "K", ":move '<-2<CR>gv-gv", opts)
keymap("x", "<A-j>", ":move '>+1<CR>gv-gv", opts)
keymap("x", "<A-k>", ":move '<-2<CR>gv-gv", opts)

-- Move text up and down Ελληνικά
keymap("x", "Ξ", ":move '>+1<CR>gv-gv", opts)
keymap("x", "Κ", ":move '<-2<CR>gv-gv", opts)
keymap("x", "<A-ξ>", ":move '>+1<CR>gv-gv", opts)
keymap("x", "<A-κ>", ":move '<-2<CR>gv-gv", opts)

-- Buffers
keymap("n", "<leader>b", ":buffers<CR>:buffer<Space>", opts)
keymap("n", "<leader>bn", ":bnext<CR>", opts)
keymap("n", "<leader>bp", ":bprevious<CR>", opts)
keymap("n", "<leader>bf", ":bfirst<CR>", opts)
keymap("n", "<leader>bl", ":blast<CR>", opts)
keymap("n", "<leader>bd", ":bd<CR>", opts)

-- Buffers Ελληνικά
keymap("n", "<leader>β", ":buffers<CR>:buffer<Space>", opts)
keymap("n", "<leader>βν", ":bnext<CR>", opts)
keymap("n", "<leader>βπ", ":bprevious<CR>", opts)
keymap("n", "<leader>βφ", ":bfirst<CR>", opts)
keymap("n", "<leader>βλ", ":blast<CR>", opts)
keymap("n", "<leader>βδ", ":bd<CR>", opts)

-- Replace word in document
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- Replace word in document Ελληνικά
vim.keymap.set("n", "<leader>σ", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- Make excecutable
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", opts)

-- Make excecutable Ελληνικά
vim.keymap.set("n", "<leader>χ", "<cmd>!chmod +x %<CR>", opts)

-- Grep 
vim.keymap.set("n","<leader>g", "yiw:grep <c-r><c-f><cr>", opts)

-- Grep Ελληνικά
vim.keymap.set("n","<leader>γ", ":grep ", opts)
