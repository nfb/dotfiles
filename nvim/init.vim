
"
" Config heavily based on https://medium.com/@yanglyu5201/neovim-setup-for-golang-programming-68ebf59336d9
" 

syntax on
set nu ru et
set ts=2 sts=2 sw=2
set cursorline
set hlsearch
set number
set expandtab
set tabstop=2
set shiftwidth=2

" Old buffer map config pre NERDTree 
"map <C-t> :new<cr>:term<cr>
"tnoremap <Esc> <C-\><C-n>

call plug#begin()

Plug 'https://github.com/morhetz/gruvbox'
Plug 'https://github.com/tpope/vim-fugitive'
Plug 'preservim/nerdtree'
Plug 'https://github.com/ctrlpvim/ctrlp.vim'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

"  Uncomment these if you want to manage LSP servers from neovim
"  Plug 'williamboman/mason.nvim'
"  Plug 'williamboman/mason-lspconfig.nvim'

" LSP Support
Plug 'neovim/nvim-lspconfig'
" Autocompletion
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'L3MON4D3/LuaSnip'

Plug 'VonHeikemen/lsp-zero.nvim', {'branch': 'v3.x'}
call plug#end()

autocmd vimenter * ++nested colorscheme gruvbox

map <Leader>n :bn<cr>
map <Leader>p :bp<cr>
"nnoremap <leader>n :NERDTreeFocus<CR> not sure why i'd want this tbh
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
