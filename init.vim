set number
set relativenumber
set expandtab

call plug#begin('C:/Users/sebas/AppData/Local/nvim-data/site/plugged')

" Dart/Flutter
Plug 'dart-lang/dart-vim-plugin'
Plug 'thosakwe/vim-flutter'
Plug 'natebosch/vim-lsc'
Plug 'natebosch/vim-lsc-dart'

" Three-Nvim
Plug 'nvim-tree/nvim-web-devicons'
Plug 'nvim-tree/nvim-tree.lua'

"Formatter
Plug 'sbdchd/neoformat'

" Color Scheme
Plug 'morhetz/gruvbox'
Plug 'xiyaowong/nvim-transparent'

call plug#end()

" Settings Formatter For Dart
let g:neoformat_dart_dartfmt = {
  \ 'exe': 'dart',
  \ 'args': ['format', '--'],
  \ 'stdin': 1
  \ }


" Setting to Format code at save
autocmd BufWritePre *.dart :Neoformat

" Color Scheme Settings
colorscheme gruvbox


" Higlight 
highlight Normal guibg=#1c1c1c guifg=#dcdccc
highlight Comment guifg=#7c7c7c gui=italic
highlight Keyword guifg=#ffaf00 gui=bold
highlight LineNr guifg=#5eacd3
highlight CursorLine guibg=#2c2c2c

" Conf nvim-tree.lua
lua <<EOF
require'nvim-tree'.setup {}
require'keymap'.setup()
require('transparent').setup({
  enable = true, -- Habilita la transparencia
  extra_groups = { -- Grupos adicionales a hacer transparentes
    "Normal",
    "NormalNC",
    "Comment",
    "Constant",
    "Special",
    "Identifier",
    "Statement",
    "PreProc",
    "Type",
    "Underlined",
    "Todo",
    "String",
    "Function",
    "Conditional",
    "Repeat",
    "Operator",
    "Structure",
    "LineNr",
    "NonText",
    "SignColumn",
    "CursorLineNr",
    "EndOfBuffer",
  },
  exclude = {}, -- Grupos a excluir de la transparencia
})
EOF
