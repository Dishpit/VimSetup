syntax on           " Enable syntax highlighting
set autoindent      " Enabled automatic indentation
set smartindent     " Make indenting smart
set tabstop=4       " Number of spaces that a <Tab> in the file counts for
set shiftwidth=4    " Number of spaces to user for each step of (auto)indent
set expandtab       " Converts tabs to white space
set number          " Enable line numbering
set relativenumber  " Enable relative line numbering
set incsearch       " Incremental search
set hlsearch        " Highlight search results
set background=dark " Dark background
colorscheme gruvbox " Enable gruvbox theme

call plug#begin('~/.vim/plugged')

Plug 'jiangmiao/auto-pairs'                     " Auto-pairing of brackets and quotes
Plug 'neoclide/coc.nvim', {'branch': 'release'} " coc.nvim IntelliSense engine
Plug 'morhetz/gruvbox'                          " Gruvbox theme

call plug#end()

" Coc configuration
" List of coc extensions to install on start
let g:coc_global_extensions = [
  \ 'coc-tsserver', " JavaScript
  \ 'coc-rls',      " Rust
  \ 'coc-go',       " Go
]

" Recommended coc settings
set hidden          " Required by coc
set updatetime=300  " Faster completion
set shortmess+=c    " Avoid showing message extra message when using completion

" Map keys for using coc
nnoremap <silent> gd <Plug>(coc-definition)       " Go to definition
nnoremap <silent> gi <Plug>(coc-implementation)   " Go to implementation
nnoremap <silent> gr <Plug>(coc-references)       " List references
inoremap <silent> <C-Space> <Plug>(coc-complete)  " Trigger completion manually
