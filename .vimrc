" This vim configuration is built from Sunchuangyu Huang
colorscheme Snazzy
let g:SnazzyTrasparent=1
set pythondll=
" -> Current Color scheme
syntax on

set exrc
set secure
set colorcolumn=110
" highlight ColorColumn ctermbg=darkgray

" -> buffer setting for c
augroup project
    autocmd!
    autocmd BufRead,BufNewFile *.h,*.c set filetype=c.doxygen
augroup END

let &path.="src/include,/usr/include/AL"
set includeexpr=substitute(v:fname,'\\.','/','g')

" -> critical setting
set nocompatible              " be iMproved, required
filetype off                  " required

" -> YouCompleteMe setting
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'sonph/onehalf', {'rtp': 'vim/'}
call vundle#end()            " required
filetype plugin indent on    " required

" -> critical setting
let mapleader=" "
syntax on
set number
set relativenumber
set cursorline
set wrap
set wildmenu
set incsearch
set ignorecase
set smartcase
set ignorecase
set scrolloff=5

filetype plugin indent on
set tabstop=4
set expandtab ts=4 sw=4 ai

" -----------------------
" Change default key binding
" -----------------------
noremap h i
noremap i <nop>
noremap L nzz
noremap J Nzz
noremap i k
noremap k j
noremap j h
noremap l l
noremap I 5k
noremap K 5j
" -----------------------
" binding keys for tab operations
" -----------------------
map to :tabe<CR>S
map tj :-tabnext<CR>
map tl :+tabnext<CR>

" -----------------------
" bingding keys for windows split operations
" -----------------------
map sl :set splitright<CR>:vsplit<CR>
map sj :set nosplitright<CR>:vsplit<CR>
map si :set nosplitbelow<CR>:split<CR>
map sk :set splitbelow<CR>:split<CR>

map<LEADER>i <C-w>k
map<LEADER>k <C-w>j
map<LEADER>j <C-w>h
map<LEADER>l <C-w>l

" -----------------------
" S -> Saving file; Q -> quit; R -> resource the .vimrc
" -----------------------
map s <nop>
map S :w<CR>
map Q :q<CR>
map R :source $MYVIMRC<CR>

" -----------------------
" Resize the windows size
" -----------------------
map <Up> :res -5<CR>
map <Down> :res +5<CR>
map <Left> :vertical resize+5<CR>
map <Right> :vertical resize-5<CR>

" -----------------------
" vim plug in setting
" -----------------------
call plug#begin('-/.vim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'preservim/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'w0rp/ale'
Plug 'majutsushi/tagbar', { 'on': 'TagbarOpenAutoClose' }
Plug 'iamcco/markdown-preview.nvim', {'do' : {-> mkdp#util#install_sync() }, 'for' :['markdown', 'vim-plug'] }
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'prabirshrestha/vim-lsp'
" Plug 'neoclide/coc.nvim', {'branch': 'release'}
" theme set up
Plug 'ayu-theme/ayu-vim'
Plug 'dracula/vim',{'as':'dracula'}
Plug 'connorholyday/vim-snazzy'
Plug 'flrnd/candid.vim'
call plug#end()

" -> Current Color scheme
" -----------------------
" theme config
" -----------------------
let g:airline#extensions#tabline#enabled=1

" -----------------------
" critical setting
" -----------------------
set backspace=2
set backspace=indent,eol,start
set mouse=a
set encoding=utf-8
let &t_ut=''
set noexpandtab
set shiftwidth=4
set softtabstop=4
set list
set listchars=tab:▸\ ,trail:▫
set scrolloff=5
set tw=0
set indentexpr=
set foldmethod=indent
set foldlevel=99
"let &t_SI = "<Esc>]50;CursorShape=1\x7"
"let &t_SR = "<Esc>]50;CursorShape=2\x7"
"let &t_EI = "<Esc>]50;CursorShape=0\x7"
set laststatus=2
set autochdir
au BufReadPost * if line ("'\"") > 1 && line ("'\"") <= line("$") | exe "normal! g'\"" | endif

" NerdTree config
map tt :NERDTreeToggle<CR>
map <C-j> <C-w>j
map <C-l> <C-w>l
let NERDTreeMapOpenSplit="h"
let NERDTreeMenuDown="i"
let NERDTreeMenuUp="k"
let NERDTreeChangeRoot="r"
let NERDTreeMapOpenSplit="'"
let NERDTreeMapOpenVSplit=";"
let NERDTreeOpenInTab="o"

" spell check
map sc :set spell!<CR>
map <LEADER>r z=
noremap <C-x> ea<C-x>s
inoremap <C-x> <Esc>ea<C-x>s

" w !sudo tee %
" markdown config
let g:mkdp_auto_start=0
let g:mkdp_auto_close=1
let g:mkdp_refresh_slow=0
let g:mkdp_command_for_global=0
let g:mkdp_open_to_the_world=0
let g:mkdp_open_id=''
let g:mkdp_broswer='firefox'
let g:mkdp_echo_preview_url=''
let g:mkdp_browserfunc=''
let g:mkdp_preview_options={
    \ 'mkit':{},
    \ 'katex':{},
    \ 'uml': {},
    \ 'maid': {},
    \ 'disable_sync_scroll': 0,
    \ 'hide_yaml_meta': 1
    \ }
let g:mkdp_markdown_css=''
let g:mkdp_highlight_css=''
let g:mkdp_port=''
let g:mkdp_page_title=' [${name}] '


" Set up for coc.nvim
" Details
" https://ianding.io/2019/07/29/configure-coc-nvim-for-c-c++-development/
set hidden
set nobackup
set nowritebackup
set cmdheight=2
set updatetime=300
set shortmess+=c
set signcolumn=yes

nnoremap gd :YcmCompleter GoToDefinitionElseDeclaration<CR>
nnoremap g/ :YcmCompleter GetDoc<CR>
nnoremap gt :YcmCompleter GetType<CR>
nnoremap gr :YcmCompleter GoToReferences<CR>
let g:ycm_autoclose_preview_window_after_completion=0
let g:ycm_autoclose_preview_window_after_insertion=1
let g:ycm_use_clangd=1
let g:ycm_python_interpreter_path = "/bin/python3"
let g:ycm_python_binary_path = "/bin/python3"

" language server setup
if executable('ccls')
   au User lsp_setup call lsp#register_server({
      \ 'name': 'ccls',
      \ 'cmd': {server_info->['ccls']},
      \ 'root_uri': {server_info->lsp#utils#path_to_uri(lsp#utils#find_nearest_parent_file_directory(lsp#utils#get_buffer_path(), 'compile_commands.json'))},
      \ 'initialization_options': {'cache': {'directory': '/tmp/ccls/cache' }},
      \ 'whitelist': ['c', 'cpp', 'objc', 'objcpp', 'cc'],
      \ })
endif
