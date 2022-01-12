"--------------------------------------------------------------------------
" General settings
"--------------------------------------------------------------------------

set expandtab
set shiftwidth=4
set tabstop=4
set hidden
set signcolumn=yes:2
set relativenumber
set number
set termguicolors
set guicursor=
set undofile
set spell
set title
set ignorecase
set smartcase
set wildmode=longest:full,full
set nowrap
set list
set listchars=tab:▸\ ,trail:·,space:·
set scrolloff=8
set sidescrolloff=8
set nojoinspaces
set splitright
set confirm
set exrc
set noswapfile
" set backup
" set backupdir=~/.local/share/nvim/backup//
set updatetime=300 " Reduce time for highlighting other references
set redrawtime=10000 " Allow more time for loading syntax on large files
let g:python3_host_prog='~/.pyenv/versions/pynvim/bin/python3'

"--------------------------------------------------------------------------
" Key maps
"--------------------------------------------------------------------------

let mapleader = "\<space>"

nmap <leader>ve :edit ~/.config/nvim/init.vim<cr>
nmap <leader>vc :edit ~/.config/nvim/coc-settings.json<cr>
nmap <leader>vr :source ~/.config/nvim/init.vim<cr>

nmap <leader>u :undo<cr>

" Allow gf to open non-existent files
map gf :edit <cfile><cr>

" nerdtree
nnoremap <leader>e :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

"--------------------------------------------------------------------------
" Plugins
"--------------------------------------------------------------------------

" Automatically install vim-plug
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin(data_dir . '/plugins')

source ~/.config/nvim/plugins/coc.vim
" source ~/.config/nvim/plugins/fzf.vim
source ~/.config/nvim/plugins/telescope.vim
source ~/.config/nvim/plugins/telescope-browser.vim
source ~/.config/nvim/plugins/commentary.vim
" source ~/.config/nvim/plugins/nerdtree.vim
source ~/.config/nvim/plugins/visual-multi.vim
source ~/.config/nvim/plugins/sayonara.vim
source ~/.config/nvim/plugins/lightline.vim
source ~/.config/nvim/plugins/nord.vim
source ~/.config/nvim/plugins/iceberg.vim
source ~/.config/nvim/plugins/vim-tmux-navigator.vim
source ~/.config/nvim/plugins/vim-fugitive.vim
source ~/.config/nvim/plugins/markdown-preview.vim
source ~/.config/nvim/plugins/swap-lines.vim
source ~/.config/nvim/plugins/floaterm.vim
" source ~/.config/nvim/plugins/autosave.vim
 
call plug#end()

lua << EOF
require("telescope").load_extension "file_browser"
EOF

" lua << EOF
" local autosave = require("autosave")

" autosave.setup(
"     {
"         enabled = true,
"         execution_message = "AutoSave: saved at " .. vim.fn.strftime("%H:%M:%S"),
"         events = {"InsertLeave", "TextChanged"},
"         conditions = {
"             exists = true,
"             filename_is_not = {},
"             filetype_is_not = {},
"             modifiable = true
"         },
"         write_all_buffers = false,
"         on_off_commands = true,
"         clean_command_line_interval = 0,
"         debounce_delay = 500
"     }
" )
" EOF
" colorscheme nord
colorscheme iceberg


doautocmd User PlugLoaded
