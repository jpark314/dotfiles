set nocompatible              " be iMproved, required
filetype off                  " required

"""""""""""""""""""""""""""""""""""""""""""""""""
" so this part is to emphasize key vim shortcuts to use
" while using tmux, use ctrl-a z to temporary full screen the pane
" v to block words, V to block the whole line
" let cursor at specific line, use shift-j or shift-k to move it
" use u to undo and ctrl-r to redo
" use y to yank and p to paste
" you can use > to tabshift line
" use d to delete whole line, or use x to delete character where
" the cursor sits at, this happens in visual mode
" also, use r to replace character
" this looks the same as x, but x deletes it and r replaces that character
" use e to move to the end of the word
" use w to move forward to the beginning of a ward
" use W to move forward a word
" use b to move backward to the beginning of a word
" use $ to move to the end of the line
" use 0 to move to the beginning of the line
" use L to jump to the bottom of the screen
" use G to jump to end of the file
" Lastly, to replace text within visual block, use x to replace text
""""""""""""""""""""""""""""""""""""""""""""""""""""

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
" customized
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets'
Plugin 'derekwyatt/vim-scala'
Plugin 'Valloric/YouCompleteMe'
" added autocomplpop
"Plugin 'exvim/ex-autocomplpop'
Plugin 'ervandew/supertab'
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
Plugin 'TaskList.vim'
Plugin 'JamshedVesuna/vim-markdown-preview'
" add plugin for auto-pairs
Plugin 'auto-pairs-gentle'
Plugin 'lervag/vimtex'
Plugin 'parnmatt/vim-root'
Plugin 'faith/vim-go'

Plugin 'mgedmin/pythonhelper'

"Javascript
Plugin 'node.js'
Plugin 'pangloss/vim-javascript'
Plugin 'Enhanced-Javascript-syntax'
Plugin 'othree/yajs.vim'
Plugin 'othree/es.next.syntax.vim'
Plugin 'gavocanov/vim-js-indent'

"Plugin 'everedifice/vim-js-syntax'
Plugin 'othree/jsdoc-syntax.vim'
Plugin 'javascript-libraries-syntax'
    let g:used_javascript_libs = 'jquery,underscore,jasmine,react'
Plugin '1995eaton/vim-better-javascript-completion'
Plugin 'othree/jspc.vim'
Plugin 'moll/vim-node'
Plugin 'heavenshell/vim-jsdoc'
    let g:jsdoc_default_mapping = 0
    let g:jsdoc_underscore_private = 1
Plugin 'marijnh/tern_for_vim'
    let tern_show_argument_hint='on_move'
    let tern_show_signature_in_pum=1
    let g:tern_map_keys=1
    let g:tern_map_prefix='<Leader>'

"Recently added jedi-vim
Plugin 'davidhalter/jedi-vim'

"C
Plugin 'c.vim'

Plugin 'rking/ag.vim'
Plugin 'jeetsukumaran/vim-buffergator'
    let g:buffergator_suppress_keymaps = 1

Plugin 'svg.vim'

"indentation plugin
Plugin 'Yggdroot/indentLine'

"SQL syntax
Plugin 'shmup/vim-sql-syntax'

"Lint/Autocomplete
if has('nvim')
Plugin 'benekastah/neomake'
    autocmd! BufWritePost * Neomake
    let g:neomake_javascript_enabled_makers = ['eslint']
else

Plugin 'maralla/validator.vim'
    let g:validator_javascript_checkers=['eslint']
    let g:validator_filetype_map={'javascript.jsx': 'javascript'}
    let g:validator_warning_symbol='✓'
    let g:validator_error_symbol='✗'
    highlight ValidatorErrorSign ctermbg=18 ctermfg=09
    highlight ValidatorWarningSign ctermbg=18 ctermfg=12
endif

" Color schemes
Plugin 'tomasr/molokai'
Plugin 'flazz/vim-colorschemes'
Plugin 'jnurmine/Zenburn'
Plugin 'altercation/vim-colors-solarized'
Plugin 'NLKNguyen/papercolor-theme'

" Rainbox parenthesis
Plugin 'luochen1990/rainbow'

let fortran_free_source=1
let fortran_do_enddo=1

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

let g:airline_powerline_fonts = 0

let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/.ycm_extra_conf.py'

set guifont=Inconsolata\ for\ Powerline:h15
"let g:Powerline_symbols = 'fancy'
"let g:ycm_keep_logfiles = 1
"let g:ycm_log_level = 'debug'
let g:airline_powerline_fonts = 0
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline#extensions#tabline#buffer_nr_format = '%s:'
let g:vim_markdown_folding_disabled = 1
let g:vim_markdown_autowrite = 1
let g:vim_markdown_new_list_item_indent = 2
let g:vim_markdown_json_frontmatter = 1
let g:vim_markdown_frontmatter = 1
let g:xptemplate_brace_complete = '([{'

let g:SuperTabCrMapping = 0

let g:snipMate = get(g:, 'snipMate', {}) " Allow for vimrc re-sourcing
let g:snipMate.scope_aliases = {}
let g:snipMate.scope_aliases['ruby'] = 'ruby,rails'

" add shortcuts for managing buffers
nnoremap <C-S-t> :enew<Enter>
nnoremap <C-F5> :bprevious!<Enter>
nnoremap <C-F6> :bnext!<Enter>
nnoremap <C-F4> :bp <BAR> bd #<Enter>

imap <C-J> <esc>a<Plug>snipMateNextOrTrigger
smap <C-J> <Plug>snipMateNextOrTrigger

colorscheme onedark

set lazyredraw
set textwidth=120
set encoding=utf-8
set t_Co=256
set term=xterm-256color
set termencoding=utf-8
set fillchars+=stl:\ ,stlnc:\
"set number
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
"set cursorcolumn
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
set clipboard=unnamed
syntax enable
filetype off
filetype plugin indent on
set laststatus=2
set linespace=2
let python_highlight_all=1
" runtime path manipulation for pathogen
execute pathogen#infect()
syntax on
syntax sync fromstart
set omnifunc=syntaxcomplete#Complete
set syntax=mdarkdown
set history=1000
set undolevels=1000
set tabpagemax=50

set completeopt-=preview
set complete-=i
set ttyfast
set ttyscroll=3

" set relative line numbers
set relativenumber

"enable keyboard shortcuts
let g:tern_map_keys=1
"show argument hints
let g:tern_show_argument_hints='on_hold'

" remove unnecessary whitespace when saving
function! TrimWhiteSpace()
    %s/\s\+$//e
endfunction

autocmd FileType * autocmd FileWritePre    * :call TrimWhiteSpace()
autocmd FileType * autocmd FileAppendPre   * :call TrimWhiteSpace()
autocmd FileType * autocmd FilterWritePre  * :call TrimWhiteSpace()
autocmd FileType * autocmd BufWritePre     * :call TrimWhiteSpace()

" CtrlP settings
let g:ctrlp_match_window = 'bottom,order:ttb'
let g:ctrlp_switch_buffer = 0
let g:ctrlp_working_path_mode = 0
let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

" Enable folding
set foldenable
set foldlevelstart=10
set foldnestmax=10
set foldmethod=indent
set foldlevel=99
let g:SimpylFold_docstring_preview=1

set foldmethod=marker
set foldlevel=0
set modelines=1

if !has('nvim')
    set pastetoggle=<F2>
endif

"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

" use xnoremap to select line and move the entire line
xnoremap K :move '<-2<CR>gv=gv
xnoremap J :move '>+1<CR>gv=gv

" add keymap for vertical and horizontal split
" nmap <F5> :sp<CR>
nmap <F4> :vsp<CR>

" add keymap for current buffers
nnoremap <F3> :buffers<CR>:buffer<Space>

" add keymap for launching external process whil using vim (zsh)
nmap <F5> :!zsh<CR>

" add keymap for tagbar
nmap <F8> :TagbarToggle<CR>

" add keymap for nerdtree
nmap <F6> :NERDTreeToggle<CR>
let NERDTreeShowBookmarks=1
map <leader>e :NERDTreeFind<CR>
nmap <leader>nt :NERDTreeFind<CR>
let NERDTreeIgnore=['\.pyc', '\~$', '\.swo$', '\.swp$', '\.git', '\.hg', '\.svn', '\.bzr']
let NERDTreeChDirMode=0
let NERDTreeQuitOnOpen=0
let NERDTreeMouseMode=2
let NERDTreeShowHidden=1
let NERDTreeKeepTreeInNewTab=1"define 3 custom highlight groups
hi User1 ctermbg=green ctermfg=red   guibg=green guifg=red
hi User2 ctermbg=red   ctermfg=blue  guibg=red   guifg=blue
hi User3 ctermbg=blue  ctermfg=green guibg=blue  guifg=green
let g:nerdtree_tabs_open_on_gui_startup=1
map <Leader>n <plug>NERDTreeTabsToggle<CR>
" locate current file in NERDTree
map <leader>l :NERDTreeFind<CR>

" highlight cursorline and cursorcolumn
hi CursorLine   cterm=NONE ctermbg=darkgray ctermfg=NONE "guibg=lightgrey guifg=white
" hi CursorColumn cterm=NONE ctermbg=darkgray ctermfg=NONE "guibg=lightgrey guifg=white

" proper PEP8 indentation for Python
au BufNewFile *.py
    \ set tabstop=4
    \ set softtabstop=4
    \ set shiftwidth=4
    \ set textwidth=79
    \ set expandtab
    \ set autoindent
    \ set fileformat=unix

au BufNewFile *.js, *.html, *.css, *.json
    \ set tabstop=2
    \ set softtabstop=2
    \ set shiftwidth=2

" additional file compile
autocmd FileType python nnoremap <buffer> <F12> :exec '!python3' shellescape(@%, 1)<cr>
autocmd FileType python nnoremap <buffer> <F9> :exec '!python' shellescape(@%, 1)<cr>
autocmd filetype c nnoremap <F9> :w <bar> exec '!gcc '.shellescape('%').' -o '.shellescape('%:r').' && ./'.shellescape('%:r')<CR>
autocmd filetype cpp nnoremap <F9> :w <bar> exec '!g++ '.shellescape('%').' -o '.shellescape('%:r').' && ./'.shellescape('%:r')<CR>
autocmd FileType java nnoremap <buffer> <F9> :exec '!javac' shellescape(expand('%'), 1) '&& java' shellescape(expand('%:r'), 1)<cr>"

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
au FileType python setlocal textwidth=79|setlocal colorcolumn=79
au FileType rst setlocal textwidth=79|setlocal colorcolumn=79
au FileType java setlocal textwidth=99|setlocal colorcolumn=99
au FileType cpp setlocal textwidth=79|setlocal colorcolumn=79
au FileType c setlocal textwidth=79|setlocal colorcolumn=79
highlight ColorColumn ctermbg=160 guibg=#D80000

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

au BufNewFile *.py
    \ set tabstop=4
    \ set softtabstop=4
    \ set shiftwidth=4
    \ set textwidth=79
    \ set expandtab
    \ set autoindent
    \ set fileformat=unix

au BufNewFile *.js, *.html, *.css, *.json
    \ set tabstop=2
    \ set softtabstop=2
    \ set shiftwidth=2

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
set completeopt+=preview
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
inoremap <expr> <C-n> pumvisible() ? '<C-n>' :
  \ '<C-n><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'

inoremap <expr> <M-,> pumvisible() ? '<C-n>' :
  \ '<C-x><C-o><C-n><C-p><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'

" color scheme
"if has('gui_running')
"    set background=dark
"    colorscheme solarized
" disable comment here to set color scheme to zenburn
"else
"    colorscheme zenburn
"endif

set listchars=eol:¬,tab:->,trail:~,extends:>,precedes:<

"define 3 custom highlight groups
hi User1 ctermbg=green ctermfg=red   guibg=green guifg=red
hi User2 ctermbg=red   ctermfg=blue  guibg=red   guifg=blue
hi User3 ctermbg=blue  ctermfg=green guibg=blue  guifg=green

" cleanup whitespace on save
au BufWritePre * :%s/\s\+$//e
au BufWritePre *.go :Fmt

hi CursorLine   cterm=NONE ctermbg=darkgray ctermfg=NONE "guibg=lightgrey guifg=white
"hi CursorColumn cterm=NONE ctermbg=darkgray ctermfg=NONE "guibg=lightgrey guifg=white

" add line to grey out comment section
hi Comment ctermfg=6

" disable automatic comment indentation
set formatoptions-=cro

" specifically for c, cpp, java
au FileType c,cpp,java setlocal comments-=:// comments+=f://

nnoremap <leader>v <Plug>TaskList

let vim_markdown_preview_hotkey='<C-m>'
let vim_markdown_preview_brower='Google Chrome'
let vim_markdown_preview_temp_file=1
let vim_mardown_preview_github=1

let g:gitgutter_realtime = 1
let g:gitgutter_eager = 1
set updatetime=250

" auto-pairs configuration
let g:AutoPairsFlyMode = 1
let g:AutoPairsShortcutBackInsert = '<M-b>'

" Supertab
let g:SuperTabDefaultCompletionType = "context"
let g:SuperTabDefaultCompletionType = "<C-X><C-O>"
let g:SuperTabLongestEnhanced = 1
let g:SuperTabContextTextOmniPrecedence = ['&omnifunc', '&completefunc']

" Added lines for Github flavored Markdown syntax extension
let g:gfm_syntax_enable_always = 0
let g:gfm_syntax_enable_filetypes = ['markdown.gfm']
autocmd BufRead,BufNew,BufNewFile README.md setlocal ft=markdown.gfm

" make jedi-vim use tabs
let g:jedi#use_tabs_not_buffers = 1

" Enable folding
set foldenable
set foldlevelstart=10
set foldnestmax=10
set foldmethod=indent
set foldlevel=99
let g:SimplyFold_docstring_preview=1

set foldmethod=marker
set foldlevel=0
set modelines=1

" Wordprocessor mode
func! WordProcessorMode()
 setlocal textwidth=80
 setlocal smartindent
 setlocal spell spelllang=en_us
 setlocal noexpandtab
endfu

" shortcut, use :WP
com! WP call WordProcessorMode()

" enable rainbow parethesis
let g:rainbow_active = 1
