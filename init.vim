"" Load all plugins now.
packloadall
" All messages and errors will be ignored.
silent! helptags ALL


" ===== VIM-PLUG =====
" - For Neovim: stdpath('data') . '/plugged'
call plug#begin(stdpath('data') . '/plugged')
" Colorscheme
Plug 'drewtempelmeyer/palenight.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'vim-airline/vim-airline'
Plug 'ntpeters/vim-better-whitespace'
" Load only when a tex file is opened
Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex' }
call plug#end()


" ===== COLORSCHEME =====
set background=dark
colorscheme palenight
"let g:lightline.colorscheme = 'palenight'
let g:airline_theme = "palenight"
if (has("termguicolors"))
  set termguicolors
endif
let g:palenight_terminal_italics=1
set colorcolumn=80
highlight colorcolumn ctermbg=darkgrey


" ===== LATEX-PREVIEWER =====
let g:livepreview_previewer = 'open -a Preview'


" ===== MISC =====
" Display hybrid relative line number on the left
set nu rnu
" Set leader key
let mapleader = ','
" Enable syntax highlighting
syntax on


" ===== ULTISNIPS CONFIG =====
" Shortcut for previous position
let g:UltiSnipsJumpBackwardTrigger='<c-j>'
" shortcut for next position
let g:UltiSnipsJumpForwardTrigger='<c-k>'


" ===== BETTERWHITESPACE =====
let g:strip_whitespace_on_save=1
