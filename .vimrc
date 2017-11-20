set nocompatible              " be iMproved, required
filetype off                  " required

" This is very stupid to write it down, but in vim, not in insert mode, use
" 'v' to block the words or string, use 'y' to yank and 'p' to paste or 'd' to
" delete,

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Javascript syntax highlight
Plugin 'jelera/vim-javascript-syntax'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" added nerdtree
Plugin 'scrooloose/nerdtree'
" added snipmate
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets'
Plugin 'derekwyatt/vim-scala'
Plugin 'pangloss/vim-javascript'
" added autocomplpop
" Bundle 'exvim/ex-autocomplpop'
Plugin 'ervandew/supertab'
Plugin 'Valloric/YouCompleteMe'
Plugin 'elzr/vim-json'
Plugin 'plasticboy/vim-markdown'
Plugin 'vim-scripts/a.vim'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/syntastic'
Plugin 'nvie/vim-flake8'
Plugin 'sjl/gundo.vim'
Plugin 'bling/vim-airline'
Plugin 'Sirver/ultisnips'
Plugin 'edsono/vim-matchit'
Plugin 'justinmk/vim-sneak'
Plugin 'kien/ctrlp.vim'
Plugin 'ludovicchabant/vim-lawrencium'
Plugin 'majutsushi/tagbar'
Plugin 'mhinz/vim-signify'
Plugin 'tyru/open-browser.vim'
Plugin 'tpope/vim-sleuth'
Plugin 'tpope/vim-surround'
Plugin 'airblade/vim-gitgutter'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Plugin 'vim-airline/vir-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'Vimjas/vim-python-pep8-indent'
Plugin 'tmhedberg/SimpylFold'

" Color schemes
Plugin 'tomasr/molokai'
Plugin 'flass/vim-colorschemes'
Plugin 'jnurmine/Zenburn'
Plugin 'altercation/vim-colors-solarized'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" air-line
let g:airline_powerline_fonts = 0

set guifont=Inconsolata\ for\ Powerline:h15
"let g:Powerline_symbols = 'fancy'
let g:ycm_keep_logfiles = 1
let g:ycm_log_level = 'debug'
let g:airline_powerline_fonts = 0
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:vim_markdown_folding_disabled = 1
let g:vim_markdown_autowrite = 1
let g:vim_markdown_new_list_item_indent = 2
let g:vim_markdown_json_frontmatter = 1
let g:vim_markdown_frontmatter = 1
let g:xptemplate_brace_complete = '([{'

let g:SuperTabCrMapping = 0

" Personal tastes
set textwidth=120
set encoding=utf-8
set t_Co=256
set term=xterm-256color
set termencoding=utf-8
set fillchars+=stl:\ ,stlnc:\
set number
set ai
set si
set nowrap
set ignorecase
set hlsearch
set backspace=2
set autoindent
set autochdir
set cindent
set smartindent
set nowrapscan
set nobackup
set background=dark
set novisualbell
set nojoinspaces
set ruler
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set smarttab
set incsearch
set ignorecase
set title
set list
set nu
set ic
set cursorline
set cursorcolumn
set showmatch
set wmnu
set wrap
set linebreak
set display+=lastline
set showbreak=↪
set backspace=indent,eol,start
set showcmd
set enc=UTF-8
set autowrite
set mouse=a
set wildmode=full
set statusline+=%F
set splitbelow
set splitright
syntax enable
filetype off
filetype plugin indent on
set laststatus=2
set linespace=2
let python_highlight_all=1
syntax on

"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Enable folding
set foldmethod=indent
set foldlevel=99
let g:SimpylFold_docstring_preview=1

" Enable folding with the spacebar
nnoremap <space> za

"python with virtualenv support
py << EOF
import os
import sys
if 'VIRTUAL_ENV' in os.environ:
  project_base_dir = os.environ['VIRTUAL_ENV']
  activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
  execfile(activate_this, dict(__file__=activate_this))
EOF

" proper PEP8 indentation for Python
au BufNewFile *.py
    \ set tabstop=4
    \ set softtabstop=4
    \ set shiftwidth=4
    \ set textwidth=79
    \ set expandtab
    \ set autoindent
    \ set fileformat=unix

au BufNewFile *.js, *.html, *.css
    \ set tabstop=2
    \ set softtabstop=2
    \ set shiftwidth=2

" additional file compile
autocmd FileType python nnoremap <buffer> <F9> :exec '!python' shellescape(@%, 1)<cr>
autocmd filetype c nnoremap <F9> :w <bar> exec '!gcc '.shellescape('%').' -o '.shellescape('%:r').' && ./'.shellescape('%:r')<CR>
autocmd filetype cpp nnoremap <F9> :w <bar> exec '!g++ '.shellescape('%').' -o '.shellescape('%:r').' && ./'.shellescape('%:r')<CR>

" customization by filetype
autocmd Filetype html setlocal ts=2 sts=2 sw=2 expandtab
autocmd Filetype ruby setlocal ts=2 sts=2 sw=2 expandtab
autocmd Filetype javascript setlocal ts=4 sts=4 sw=4 noexpandtab

" 2 spaces indenting
au FileType haskell,lhaskell,yaml,clevercss,css,less,rst,javascript,htmljinja,html,htmldjango setlocal shiftwidth=2|setlocal softtabstop=2|setlocal tabstop=2

" 4 space indenting
au FileType python,scons setlocal shiftwidth=4|setlocal softtabstop=4|setlocal tabstop=4

au FileType tex,latex setlocal linebreak
au FileType text setlocal linebreak|setlocal showbreak=\ \

" 79 width
au FileType python,rst setlocal textwidth=79|setlocal colorcolumn=79
au FileType rst setlocal textwidth=79|setlocal colorcolumn=79
au FileType java setlocal textwidth=99|setlocal colorcolumn=99

" go is special
au FileType go setlocal noexpandtab|setlocal tabstop=2|setlocal softtabstop=0|set shiftwidth=2

" cleanup whitespace on save
au BufWritePre * :%s/\s\+$//e
au BufWritePre *.go :Fmt

" Enable the wildmenu which provides enhanced command completion when tab is pressed
set wildmenu
set wildmode=longest,full
set wildignore=*.pyc

" Enable auto-complete for JavaScript
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS

let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

" Status line
set statusline=\ %c%l:v\ [%p]%=%a\ %h%m%r\ %F\ %t[%{strlen(&fenc)?&fenc:'none'},%{&ff}]%h%m%r%y%=%c,%l/%L\ %P
set statusline+=%*       "switch back to normal statusline highlight
set statusline+=%#error# "switch to error highlight
set statusline+=%#todo#  "switch to todo highlight
set statusline=%f " Path.
set statusline+=%m " Modified flag.
set statusline+=%r " Readonly flag.
set statusline+=%w " Preview window flag.
set statusline+=\ " Space.
set statusline+=%= " Right align.
set statusline+=(
set statusline+=%{&ff} " Format (unix/DOS).
set statusline+=/
set statusline+=%{strlen(&fenc)?&fenc:&enc} " Encoding (utf-8).
set statusline+=/
set statusline+=%{&ft} " Type (python).
set statusline+=)
set statusline+=\ (line\ %l\/%L,\ col\ %03c)

" improve mapping
set completeopt=longest,menuone
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

inoremap <expr> <C-n> pumvisible() ? '<C-n>' :
  \ '<C-n><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'

inoremap <expr> <M-,> pumvisible() ? '<C-n>' :
  \ '<C-x><C-o><C-n><C-p><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'

" color scheme
if has('gui_running')
    set background=dark
    colorscheme solarized
endif

if !has('nvim')
    set pastetoggle=<F2>
endif

if has("syntax")
    syntax on
endif

set listchars=eol:¬,tab:->,trail:~,extends:>,precedes:<

"define 3 custom highlight groups
hi User1 ctermbg=green ctermfg=red   guibg=green guifg=red
hi User2 ctermbg=red   ctermfg=blue  guibg=red   guifg=blue
hi User3 ctermbg=blue  ctermfg=green guibg=blue  guifg=green

" Make the directory and parents for the current file
command! -complete=file -nargs=0 Mkdir !mkdir -p %:h

" add keymap for tagbar
nmap <F8> :TagbarToggle<CR>

" add keymap for nerdtree
nmap <F7> :NERDTreeToggle<CR>

" highlight cursorline and cursorcolumn
hi CursorLine   cterm=NONE ctermbg=darkgray ctermfg=NONE "guibg=lightgrey guifg=white
hi CursorColumn cterm=NONE ctermbg=darkgray ctermfg=NONE "guibg=lightgrey guifg=white
