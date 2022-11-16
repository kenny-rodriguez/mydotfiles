vim.opt.guicursor = ""

vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.hlsearch = false
vim.opt.incsearch = true
vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.opt.smartindent = true
vim.opt.wrap = false
vim.opt.cursorline = true

vim.opt.wildmenu = true

vim.opt.timeoutlen = 500
vim.g.mapleader = " "

vim.opt.shell = "/usr/bin/zsh"


function map(mode, lhs, rhs, opts)
    local options = { noremap = true }
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

map("n", "<Leader><Space>", ":noh<CR>", { silent = true })
map("n", "<Leader>w", ":w<CR>", { silent = true })
map("n", "<Leader>e", ":q!<CR>", { silent = true })

map("n", "<Leader>1", ":vert split<CR>", { silent = true })
map("n", "<Leader>2", ":hor split<CR>", { silent = true })

map("n", "<Leader>h", "<C-w>h", { silent = true })
map("n", "<Leader>j", "<C-w>j", { silent = true })
map("n", "<Leader>k", "<C-w>k", { silent = true })
map("n", "<Leader>l", "<C-w>l", { silent = true })

map("n", "<Leader>b", ":Rexplore<CR>", { silent = true })
map("n", "<Leader>f", "zf%", { silent = true })
