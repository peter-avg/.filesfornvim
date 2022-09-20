set number
set exrc 
set relativenumber 
set hidden 
set tabstop=4 softtabstop=4 
set shiftwidth=4 
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

call plug#begin()
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'
Plug 'windwp/nvim-autopairs'
Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'  
Plug 'numToStr/Comment.nvim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
call plug#end()

lua <<EOF
require "user.cmp"
require "user.lsp"
require "user.keymaps"
EOF

let g:airline_power_fonts=2
let g:airline_themes_base16_constant = 1
let g:gruvbox_italic=1
let g:gruvbox_termcolors=256
let g:gruvbox_italic=1
let g:gruvbox_underline=0
set bg=dark
let g:gruvbox_transparent_bg=1
set encoding=utf-8
colorscheme gruvbox
hi NonText ctermbg=NONE
hi Normal ctermbg=none guibg =none


