set number
set exrc 
set relativenumber 
set hidden 
set tabstop=4 softtabstop=4 
set shiftwidth=4 
set colorcolumn=120
set langmap=ΑA,ΒB,ΨC,ΔD,ΕE,ΦF,ΓG,ΗH,ΙI,ΞJ,ΚK,ΛL,ΜM,ΝN,ΟO,ΠP,QQ,ΡR,ΣS,ΤT,ΘU,ΩV,WW,ΧX,ΥY,ΖZ,αa,βb,ψc,δd,εe,φf,γg,ηh,ιi,ξj,κk,λl,μm,νn,οo,πp,qq,ρr,σs,τt,θu,ωv,ςw,χx,υy,ζz
set expandtab 
set smartindent 
set nu 
set nowrap 
set smartcase 
set noerrorbells 
set nohlsearch 
set scrolloff=8 
syntax on 
set autoindent 
set showmatch 
let python_highlight_all=1 
syntax on 
set laststatus=2 
set nocompatible 
let g:godot_executable = '/Applications/Godot.app/Contents/MacOS/Godot'

call plug#begin()
Plug 'jez/vim-better-sml'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && npx --yes yarn install' }
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.3' }
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'williamboman/nvim-lsp-installer'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'
Plug 'williamboman/mason.nvim'
Plug 'windwp/nvim-autopairs'
Plug 'morhetz/gruvbox'
Plug 'lervag/vimtex'
Plug 'habamax/vim-godot'
" Plug 'vim-airline/vim-airline'  
" Plug 'vim-airline/vim-airline-themes'  
Plug 'numToStr/Comment.nvim'
" Plug 'folke/noice.nvim'
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
Plug 'mfussenegger/nvim-jdtls'
" Plug 'MunifTanjim/nui.nvim'
" Plug 'rcarriga/nvim-notify'
" Plug 'tribela/vim-transparent'
call plug#end()

let g:LanguageClient_serverCommands = {
    \ 'sql': ['sql-language-server', 'up', '--method', 'stdio'],
    \ }


lua <<EOF
require "user.lsp"
require "user.cmp"
require "user.keymaps"
local builtin = require('telescope.builtin')
vim.keymap.set("n", "<leader>ff", builtin.find_files, {})
vim.keymap.set("n", "<leader>fg", builtin.git_files, {})
vim.keymap.set("n", "<leader>fb", builtin.buffers, {})
vim.keymap.set("n", "<leader>fh", builtin.help_tags, {})
vim.keymap.set("n", "<leader>fs", builtin.live_grep, {})
EOF

let g:gruvbox_italic=1
let g:gruvbox_termcolors=256
let g:gruvbox_italic=1
let g:gruvbox_underline=0
" let g:airline#extensions#tabline#enabled = 1
" let g:airline#extensions#tabline#left_sep = ' '
" let g:airline#extensions#tabline#left_alt_sep = '|'
" let g:airline#extensions#tabline#formatter = 'default'
" let g:airline_theme='simple'
set bg=dark
let g:gruvbox_transparent_bg=1
set encoding=utf-8
colorscheme gruvbox
hi NonText ctermbg=NONE
hi Normal ctermbg=none guibg =none

set completeopt=menu,menuone,noselect

lua << EOF
require'lspconfig'.gdscript.setup{capabilities = require('cmp_nvim_lsp').default_capabilities(vim.lsp.protocol.make_client_capabilities())}

local cmp = require'cmp'

cmp.setup({
  mapping = {
    ['<C-d>'] = cmp.mapping.scroll_docs(-4),
    ['<C-f>'] = cmp.mapping.scroll_docs(4),
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<C-e>'] = cmp.mapping.close(),
    ['<CR>'] = cmp.mapping.confirm({ select = true }),
  },

  sources = {
    { name = 'nvim_lsp' },
    { name = 'buffer' },
  }
})
EOF
