set number
set exrc 
set relativenumber 
set hidden 
set tabstop=4 softtabstop=4 
set shiftwidth=4 
set colorcolumn=100
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
set gp=git\ grep\ -n

call plug#begin()
Plug 'nvim-lua/plenary.nvim'
Plug 'jez/vim-better-sml'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.1' }
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
" Plug 'vim-airline/vim-airline'  
" Plug 'vim-airline/vim-airline-themes'  
Plug 'numToStr/Comment.nvim'
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
" Plug 'tribela/vim-transparent'
call plug#end()

let g:LanguageClient_serverCommands = {
    \ 'sql': ['sql-language-server', 'up', '--method', 'stdio'],
    \ }

lua <<EOF
require "user.lsp"
require "user.cmp"
require "user.keymaps"
require "user.telescope"
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

