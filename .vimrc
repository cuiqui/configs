syntax on
filetype plugin indent on

set t_ut=
set visualbell
set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nu
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch

set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey

call plug#begin('~/.vim/plugged')

Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'
Plug 'jremmen/vim-ripgrep'
Plug 'tpope/vim-fugitive'
Plug 'vim-utils/vim-man'
Plug 'https://github.com/kien/ctrlp.vim'
Plug 'https://github.com/ycm-core/YouCompleteMe'
Plug 'mbbill/undotree'
Plug 'https://github.com/neovimhaskell/haskell-vim'
Plug 'ndmitchell/ghcid', { 'rtp': 'plugins/nvim' }

call plug#end()

colorscheme gruvbox
set background=dark

if executable('rg')
    let g:rg_derive_root='true'
endif

let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']
let g:netrw_browse_split = 2
let g:netrw_bannder = 0
let g:netrw_winsize = 25
let g:ctrlp_use_caching = 0
let g:airline_powerline_fonts = 1
let mapleader = " "

nnoremap <leader>u :UndotreeShow<CR>
nnoremap <leader>pv :wincmd v<bar> :Ex <bar> :vertical resize 30<CR>
nnoremap <leader>ps :Rg<SPACE>
nnoremap <silent> <Leader>+ :vertical resize +5<CR>
nnoremap <silent> <Leader>- :vertical resize -5<CR>
nnoremap <silent> <Leader>gd :YcmCompleter GoTo<CR>
