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

Plug 'jiangmiao/auto-pairs'   " Auto-pairing of brackets and quotes
Plug 'ycm-core/YouCompleteMe' " Intellisense engine
Plug 'morhetz/gruvbox'        " Gruvbox theme

call plug#end()
