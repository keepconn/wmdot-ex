" Enable plugins
packadd! onedark.vim
packadd! lightline.vim
packadd! vim-polyglot
packadd! nerdtree

" General settings
set number
set tabstop=4 shiftwidth=4 expandtab
set autoindent smartindent
set mouse=a
set termguicolors
set updatetime=300
set hidden
set nobackup nowritebackup
set cmdheight=2
set shortmess+=c

" Colors and theme
syntax on
colorscheme onedark
set background=dark

" Lightline configuration
set laststatus=2
let g:lightline = { 'colorscheme': 'onedark' }

" NERDTree configuration
let NERDTreeShowHidden=1
let NERDTreeQuitOnOpen=1
map <C-n> :NERDTreeToggle<CR>

" Key mappings
nnoremap <Tab> :tabnext<CR>
nnoremap <S-Tab> :tabprevious<CR>
nnoremap <C-t> :bnext<CR>
nnoremap <C-S-t> :bprevious<CR>
nnoremap <leader>n :set number relativenumber!<CR>

" Performance tweaks
set lazyredraw
set synmaxcol=200
