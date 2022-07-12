" remap leader 
let mapleader = " "
" Basic settings
:set number relativenumber
:set splitright " splits to the right
:set incsearch " search incremental
:set splitbelow " splits belowset number
:set autoindent
:set tabstop=4
:set shiftwidth=4
:set smarttab
:set softtabstop=4
:set mouse=a
:set scrolloff=7

" Plugins 
call plug#begin(stdpath('data') . '/plugged')
 Plug 'nvim-lua/plenary.nvim'
 Plug 'nvim-telescope/telescope.nvim'
 Plug 'http://github.com/tpope/vim-surround' " Surrounding ysw), yss) - the whole line
 Plug 'mvanderkamp/vim-pudb-and-jam' " Python Debbuging tool 
 Plug 'https://github.com/preservim/nerdtree' " NerdTree
 Plug 'https://github.com/tpope/vim-commentary' " For Commenting gcc & gc
 Plug 'https://github.com/vim-airline/vim-airline' " Status bar
 Plug 'https://github.com/rafi/awesome-vim-colorschemes' " Retro Scheme
 Plug 'https://github.com/neoclide/coc.nvim'  " Auto Completion
 Plug 'https://github.com/ryanoasis/vim-devicons' " Developer Icons
 Plug 'https://github.com/preservim/tagbar' " Tagbar for code navigation
 Plug 'puremourning/vimspector' " Old Py debug tool 
 Plug 'joshdick/onedark.vim'
 Plug 'ap/vim-buftabline'
 Plug 'airblade/vim-gitgutter'
 Plug 'Xuyuanp/nerdtree-git-plugin'
 Plug 'jiangmiao/auto-pairs'
 Plug 'dense-analysis/ale'
 Plug 'vim-scripts/indentpython.vim'
 Plug 'lepture/vim-jinja'
 Plug 'pangloss/vim-javascript'
 Plug 'alvan/vim-closetag'
 Plug 'maxmellon/vim-jsx-pretty'
 Plug 'mbbill/undotree'
 Plug 'gruvbox-community/gruvbox'
 call plug#end()

if (has("termguicolors"))
	set termguicolors
endif

 " auto-pairs

au FileType python let b:AutoPairs = AutoPairsDefine({"f'" : "'", "r'" : "'", "b'" : "'"})
 
" Key remaps

nmap <leader>=" "
" imap kj <Esc>
" map kj <Esc>
" tnoremap kj <Esc>

" move through split windows

nmap <leader>k :wincmd k<CR>
nmap <leader>j :wincmd j<CR>
nmap <leader>h :wincmd h<CR>
nmap <leader>l :wincmd l<CR>

"NERDTree setup 

map <leader>t :TagbarToggle<CR>
map <leader>n :NERDTreeToggle<CR>
map <leader>nm :NERDTreeRefreshRoot<CR>

"Colorscheme
:colorscheme onedark

" Undo Tree
nmap <leader>uu :UndotreeToggle<CR>
"
" puremourning/vimspector
" nnoremap <leader>da :call vimspector#Launch()<CR>
" nnoremap <leader>ds :call vimspector#Reset()<CR>
" nnoremap <leader>dx :call vimspector#Stop()<CR>
" nnoremap <S-k> :call vimspector#StepOut()<CR>
" nnoremap <S-l> :call vimspector#StepInto()<CR>
" nnoremap <S-j> :call vimspector#StepOver()<CR>
" nnoremap <leader>drr :call vimspector#Restart()<CR>
" nnoremap <leader>dn :call vimspector#Continue()<CR>
" nnoremap <leader>drc :call vimspector#RunToCursor()<CR>
" nnoremap <leader>db :call vimspector#ToggleBreakpoint()<CR>
" nnoremap <leader>de :call vimspector#ToggleConditionalBreakpoint()<CR>
" nnoremap <leader>dcc :call vimspector#ClearBreakpoints()<CR>

"PUDB configuration 
nnoremap <leader>bc :<C-U>PudbClearAll<CR>
nnoremap <leader>be :<C-U>PudbEdit<CR>
nnoremap <leader>bl :<C-U>PudbList<CR>
nnoremap <leader>bq :<C-U>PudbQfList<CR>
nnoremap <leader>bb :<C-U>PudbToggle<CR>
nnoremap <leader>bu :<C-U>PudbUpdate<CR>
" Find files using Telescope command-line sugar.
nnoremap <leader>ff :Telescope find_files<CR>
" nnoremap <leader>ff <cmd>Telescope find_files<CR>
nnoremap <leader>fg <cmd>Telescope live_grep<CR>
nnoremap <leader>fb <cmd>Telescope buffers<CR>
nnoremap <leader>fh <cmd>Telescope help_tags<CR>
