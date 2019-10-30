"
" Plugins
"
call plug#begin()
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'itchyny/lightline.vim'
Plug 'Raimondi/delimitMate'
Plug 'stephpy/vim-yaml'
Plug 'plasticboy/vim-markdown'
Plug 'lifepillar/vim-solarized8'
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
call plug#end()

"
" Settings
"
set noerrorbells                " No beeps
set number                      " Show line numbers
set backspace=indent,eol,start  " Makes backspace key more powerful.
set showcmd                     " Show me what I'm typing
set showmode                    " Show current mode.
set noswapfile                  " Don't use swapfile
set nobackup					" Don't create annoying backup files
set nowritebackup
set splitright                  " Split vertical windows right to the current windows
set splitbelow                  " Split horizontal windows below to the current windows
set encoding=utf-8              " Set default encoding to UTF-8
set autowrite                   " Automatically save before :next, :make etc.
set autoread                    " Automatically reread changed files without asking me anything
set laststatus=2
set hidden
set ruler                       " Show the cursor position all the time
au FocusLost * :wa              " Set vim to save the file on focus out.
set fileformats=unix,dos,mac    " Prefer Unix over Windows over OS 9 formats
set noshowmatch                 " Do not show matching brackets by flickering
set noshowmode                  " We show the mode with airline or lightline
set incsearch                   " Shows the match while typing
set hlsearch                    " Highlight found searches
set ignorecase                  " Search case insensitive...
set smartcase                   " ... but not when search pattern contains upper case characters
set ttyfast
set lazyredraw          	    " Wait to redraw "
set nocursorcolumn
set nocursorline
filetype plugin indent on
syntax on
syntax sync minlines=256
set synmaxcol=300
set re=1
set conceallevel=0
set wrap
set textwidth=79
set formatoptions=qrn1
set autoindent
set complete-=i
set showmatch
set smarttab
set et
set tabstop=4
set shiftwidth=4
set expandtab
set nrformats-=octal
set shiftround
set complete=.,w,b,u,t
set completeopt=longest,menuone
set mouse=nicr
set laststatus=2
set foldlevelstart=99

" Colors
set background=dark
colorscheme solarized8

autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p

"==================== NerdTree ====================
" For toggling
nmap <C-n> :NERDTreeToggle<CR>
noremap <Leader>n :NERDTreeToggle<cr>
noremap <Leader>f :NERDTreeFind<cr>

let NERDTreeShowHidden=1

let NERDTreeIgnore=['\.vim$', '\~$', '\.git$', '.DS_Store']

" Close nerdtree and vim on close file
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" ==================== Vim-go ====================
au BufRead,BufNewFile *.go set filetype=go 
let g:go_fmt_fail_silently = 0
let g:go_fmt_command = "goimports"
let g:go_autodetect_gopath = 1
let g:go_term_enabled = 1
let g:go_snippet_engine = "neosnippet"
let g:go_highlight_space_tab_error = 1
let g:go_highlight_array_whitespace_error = 1
let g:go_highlight_trailing_whitespace_error = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_function_parameters = 1
let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_format_strings = 1
let g:go_highlight_variable_declarations = 1
let g:go_fmt_autosave = 1
let g:go_version_warning = 0
