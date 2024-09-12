syntax on                       " enable syntax highlighting
set autoindent                  " enabled automatic indentation
set smartindent                 " make indenting smart
set tabstop=2                   " number of spaces per <Tab>
set shiftwidth=2                " num of spaces per each step of autoindent
set expandtab                   " converts tabs to white space
set number                      " enable line numbering
set relativenumber              " enable relative line numbering
set incsearch                   " incremental search
set hlsearch                    " highlight search results
set background=dark             " dark background
set scrolloff=999               " scroll offset
set colorcolumn=80              " set verical line at 80 character mark
set backspace=indent,eol,start  " set universal backspacing

call plug#begin('~/.vim/plugged')

Plug 'jiangmiao/auto-pairs'                     " auto-pairing of brackets and quotes
Plug 'neoclide/coc.nvim', {'branch': 'release'} " coc.nvim IntelliSense engine
Plug 'morhetz/gruvbox'                          " gruvbox theme

call plug#end()

colorscheme gruvbox " enable gruvbox theme

" coc configuration
" list of coc extensions to install on start
let g:coc_global_extensions = [ 'coc-tsserver', 'coc-java', 'coc-clangd' ]

" coc settings
set hidden          " required by coc
set updatetime=300  " faster completion
set shortmess+=c    " avoid showing message extra message when using completion

" Map keys for using coc
nnoremap <silent> gd <Plug>(coc-definition)       " Go to definition
nnoremap <silent> gi <Plug>(coc-implementation)   " Go to implementation
nnoremap <silent> gr <Plug>(coc-references)       " List references
inoremap <silent> <C-Space> <Plug>(coc-complete)  " Trigger completion manually
