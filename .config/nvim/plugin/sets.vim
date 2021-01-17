" source vimrc from project root
set exrc

" better cursor
"set guicursor=

set relativenumber
set number

set hidden
set noerrorbells

set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent

set nohlsearch
set incsearch

set textwidth=0
set formatoptions-=t
set nowrap

set noswapfile
set nobackup
set undodir=~/.config/nvim/undodir
set undofile

" more space for messages
set cmdheight=2

" You will have bad experience for diagnostic messages when it's default 4000.
set updatetime=100

" don't give |ins-completion-menu| messages.
set shortmess+=c

" always show signcolumns
set signcolumn=yes

set scrolloff=8

set colorcolumn=+1

set termguicolors
set noshowmode
set completeopt=menuone,noinsert,noselect
set clipboard+=unnamedplus


set listchars=tab:»\ ,extends:›,precedes:‹,nbsp:·,trail:·,eol:¬
set list

" Open new split panes to right and bottom
set splitbelow
set splitright
