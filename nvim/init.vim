"Required for Vundle
set nocompatible
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
" Bundle manager - required
Plugin 'VundleVim/Vundle.vim'

" Git
Plugin 'tpope/vim-fugitive'

" General productivity/UI improvements
Plugin 'blueyed/vim-diminactive'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'
Plugin 'Yggdroot/indentLine'
Plugin 'preservim/nerdcommenter'
Plugin 'preservim/nerdtree'

" Syntax highlighting
Plugin 'sheerun/vim-polyglot'

" Linting/formatting
Plugin 'dense-analysis/ale'

" Typescript/JavaScript/React
Plugin 'herringtondarkholme/yats'
Plugin 'neoclide/coc.nvim'
call vundle#end()

filetype plugin indent on
let mapleader=","
syntax enable
colorscheme solarized
set background=dark
set expandtab
set softtabstop=2
set shiftwidth=2
set number
set showcmd
set cursorline
set wildmenu
set lazyredraw
set incsearch
set smartcase
set hlsearch
set foldenable
set foldlevelstart=10
set foldnestmax=10
set scrolloff=5
set autoread
set foldmethod=indent
set completeopt=longest,menuone
set wildchar=<Tab> wildmenu wildmode=full
set wildcharm=<C-Z>

nnoremap <F10> :b <C-Z>
nnoremap <leader><space> :nohlsearch<CR>
nnoremap j gj
nnoremap k gk
nnoremap B ^
nnoremap E $
nnoremap gV `[v`]
nnoremap <leader>s :mksession<CR>
noremap <leader>g :Git
nnoremap <leader>t :NERDTreeToggle<CR>
nnoremap <leader>w <C-W><C-W>
nnoremap <leader>fa :Ag<CR>
nnoremap <leader>fa :Ag<CR>

nnoremap <C-P> :Files<CR>
nnoremap <leader>w<space> :update<CR>
nnoremap <leader>q<space> :q<CR>

let g:airline_powerline_fonts=1
let g:airline_theme='deus'
let g:indentLine_enabled=1
" Typescript
let g:tsuquyomi_completion_case_sensitive=1
let g:tsuquyomi_case_sensitive_imports=1
let g:tsuquyomi_javascript_support=1
" Commenting
let g:NERDSpaceDelims=1
" Formatting
let g:ale_fixers={
      \ 'json': ['prettier'],
      \ 'javascript': ['prettier'],
      \ 'typescript': ['prettier'],
      \ 'css': ['prettier'],
      \ 'scss': ['prettier'],
      \ 'html': ['prettier'],
      \ 'markdown': ['prettier'],
      \ 'javascriptreact': ['prettier'],
      \ 'typescriptreact': ['prettier'],
      \}
let g:ale_linters_explicit=1
let g:ale_fix_on_save=1
let g:ale_javascript_prettier_use_global=1

" DEFAULTS FROM EXAMPLE VIMRC ~ https://github.com/neoclide/coc.nvim

