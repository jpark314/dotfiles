set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}
"
"
" Adding custom plugins
Plugin 'tpope/vim-sensible'
Plugin 'scrooloose/nerdtree'
Plugin 'ervandew/supertab'
Plugin 'majutsushi/tagbar'
Plugin 'elzr/vim-json'
Plugin 'honza/vim-snippets'
Plugin 'jiangmiao/auto-pairs'
Plugin 'sheerun/vim-polygot'
"Plugin 'gmarik/Vundle.vim'
Plugin 'slim-template/vim-slim.git'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'leafgarland/typescript-vim'
Plugin 'mhinz/vim-signify'
Plugin 'airblade/vim-gitgutter'
Plugin 'luochen1990/rainbow'
Plugin 'mhinz/vim-startify'
Plugin 'Yggdroot/indentLine'
Plugin 'derekwyatt/vim-scala'
Plugin 'garbas/snipmate'
Plugin 'avakhov/vim-yaml'
Plugin 'jceb/vim-orgmode'

" Additional plugins for javascript
Plugin 'node.js'
Plugin 'pangloss/vim-javascript'
Plugin 'Enhanced-Javascript-syntax'
Plugin 'gavocanov/vim-js-indent'
Plugin 'faith/vim-go'
Plugin 'TaskList.vim'
Plugin 'wokalski/autocomplete-flow'
Plugin 'artur-shaik/vim-javacomplete2'

Plugin 'ycm-core/YouCompleteMe'
Plugin 'valloric/youcompleteme'

" Additioanl plugins
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Plugin 'vim-airline/vir-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'Vimjas/vim-python-pep8-indent'
Plugin 'scrooloose/nerdcommenter'
Plugin 'nvie/vim-flake8'
Plugin 'sjl/gundo.vim'
Plugin 'bling/vim-airline'
Plugin 'Sirver/ultisnips'
Plugin 'edsono/vim-matchit'
Plugin 'justinmk/vim-sneak'
"Plugin 'kien/ctrlp.vim'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'junegunn/goyo.vim'
Plugin 'tomtom/tcomment.vim'
Plugin 'auto-pairs-gentle'
Plugin 'tyru/open-browser.vim'
Plugin 'davidhalter/jedi-vim'
Plugin 'easymotion/vim-easymotion'
Plugin 'c.vim'
Plugin 'JamshedVesuna/vim-markdown-preview'
Plugin 'isRuslan/vim-es6'
Plugin 'chrisbra/NrrwRgn'
Plugin 'w0rp/ale'

Plugin 'dhruvasagar/vim-table-mode'
Plugin 'rking/ag.vim'
Plugin 'svg.vim'
Plugin 'jeetsukumaran/vim-buffergator'
let g:buffergator_supporess_keymaps = 1

Plugin 'francoiscabrol/ranger.vim'
Plugin 'junegunn/fzf.vim'
Plugin 'cakebaker/scss-syntax.vim'
Plugin 'groenewege/vim-less'

Plugin 'ekalinlin/Dockerfile.vim'

"Plugin for golang
Plugin 'nsf/gocode', {'rtp': 'vim/'}

"Plugin for rust
Plugin 'rust-lang/rust.vim'

Plugin 'vhda/verilog_systemverilog.vim'
let g:SuperTabDefaultCompletionType = 'context'

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

set lazyredraw
set encoding=utf-8
set t_Co=256
set fillchars+=stl:\ ,stlnc:\
set hlsearch
set ruler
set ignorecase
set backspace=2
set autochdir
set nowrapscan
set nojoinspaces
set title
set ic
set nu
set nowrap
set showcmd
set backspace=indent,eol,start
set mouse=a
set smartindent
set autoindent
set cindent
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab
set smarttab
set ai
set si
set wmnu
set nowrap
set ignorecase
set background=dark
"set relativenumber
set number
set novisualbell
set cursorline
set statusline+=%F\ %l\:%c
set history=1000
set undolevels=1000
set tabpagemax=50
set listchars=tab:\|\
set list

set laststatus=2
set linespace =2
set timeoutlen=1000 ttimeoutlen=0

set completeopt-=preview
set complete-=i
set ttyfast
set ttyscroll=3

set foldmethod=indent
set foldnestmax=10
set nofoldenable
set foldlevel=2
set foldlevelstart=99

hi Normal guibg=NONE ctermbg=NONE

syntax on

if !has('nvim')
    set pastetoggle=<F2>
endif

nmap <F4> :SyntasticToggleMode<CR>
nmap <F5> :vsplit<CR>

" add keymap for current buffers
nnoremap <F3> :buffers<CR>:buffer<Space>

nmap <F8> :TagbarToggle<CR>
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

" attempt to enable system-wide clipboard copy and past
vmap <C-c> "+yi
vmap <C-x> "+c
vmap <C-v> c<ESC>"+p
imap <C-v> <ESC>"+pa

" kemap for folding, unfolding
inoremap <F12> <C-O>za
nnoremap <F12> za
onoremap <F12> <C-C>za
vnoremap <F12> zf

" some shortcuts used within vim
vnoremap <silent> <leader>[ :w ! python3<CR>
nnoremap <silent> <leader>[[ :%w ! python3<CR>
vnoremap <silent> <leader>] :Tyank<CR>
vnoremap <silent> <leader>] :Twrite bottom<CR>

"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

" change buffer split panes using arrows
nnoremap <silent> <C-Right> <c-w>l
nnoremap <silent> <C-Left> <c-w>h
nnoremap <silent> <C-Up> <c-w>k
nnoremap <silent> <C-Down> <c-w>j

" add shortcut to move lines
nnoremap ,<Up> :<C-u>silent! move-2<CR>==
nnoremap ,<Down> :<C-u>silent! move+<CR>==
xnoremap ,<Up> :<C-u>silent! '<,'>move-2<CR>gv=gv
xnoremap ,<Down> :<C-u>silent! '<,'>move'>+<CR>gv=gv

" additional file compile
autocmd FileType python nnoremap <buffer> <F9> :exec '!python3' shellescape(@%, 1)<cr>
autocmd filetype c nnoremap <F9> :w <bar> exec '!gcc -Wall '.shellescape('%').' -o '.shellescape('%:r').' && ./'.shellescape('%:r')<CR>
autocmd filetype cpp nnoremap <F9> :w <bar> exec '!g++ -Wall -g -std=c++11 '.shellescape('%').' -o '.shellescape('%:r').' && ./'.shellescape('%:r')<CR>
autocmd FileType java nnoremap <buffer> <F9> :exec '!javac' shellescape(expand('%'), 1) '&& java' shellescape(expand('%:r'), 1)<cr>"
autocmd FileType sh nnoremap <buffer> <F9> :exec '!source 'shellescape(@%, 1)<cr>
autocmd FileType go nnoremap <F9> :w <bar> exec '!go build '.shellescape('%').' && ./'.shellescape('%:r')<CR>
autocmd FileType js nnoremap <buffer> <F9> :exec '!node 'shellescape(@%, 1)<CR>
autocmd FileType rb nnoremap <buffer> <F9> :exec '!ruby 'shellescape(@%, 1)<CR>
autocmd FileType rs nnoremap <buffer> <F9> :exec '!rustc 'shellescape(expand('%'), 1)' && . ' shellescape(expand('%:r'), 1)<CR>

" customization by filetype
autocmd Filetype html setlocal ts=2 sts=2 sw=2 expandtab
autocmd Filetype ruby setlocal ts=2 sts=2 sw=2 expandtab
autocmd Filetype javascript setlocal ts=4 sts=4 sw=4 noexpandtab

" add shortcuts for vim exiting, saving
inoremap <C-w> <esc>:w<cr>
nnoremap <C-w> :w<cr>
inoremap <C-e> <esc>:wq<cr>
nnoremap <C-e> :wq<cr>
inoremap <C-q> <esc>:q<cr>
nnoremap <C-q> :q<cr>

" add shortcuts for vim to switch buffers sequentially
nnoremap <c-n> :bprevious<CR>
nnoremap <c-m> :bnext<CR>

"nnoremap <c-u> :^<CR>

" shortcut to resize tab width +10
nnoremap <c-i> :vertical resize +10<CR>

" add backslack shortcut for clearing highlight texts
nnoremap \ :noh<return>

" set runtime path for ag(the silver search)
set rtp+=~/.vim/bundle.ag

" add shortcut for ragner
nnoremap <c-b> :Ranger<CR>

" add shortcut for File using fzf
nnoremap <c-f> :Files<CR>

" add runtime path for fzf
set rtp+=~/.fzf

"""""""""""""""""""""""""""""""""""""""
"""""""Customization for vim-fzf"""""""

" Default fzf layout
" - down / up / left / right
let g:fzf_layout = { 'down': '~30%' }

" Customize fzf colors to match your color scheme
let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'border':  ['fg', 'Ignore'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }

" Enable per-command history.
" CTRL-N and CTRL-P will be automatically bound to next-history and
" previous-history instead of down and up. If you don't like the change,
" explicitly bind the keys to down and up in your $FZF_DEFAULT_OPTS.
let g:fzf_history_dir = '~/.local/share/fzf-history'

" Command for git grep
" - fzf#vim#grep(command, with_column, [options], [fullscreen])
command! -bang -nargs=* GGrep
  \ call fzf#vim#grep(
  \   'git grep --line-number '.shellescape(<q-args>), 0,
  \   { 'dir': systemlist('git rev-parse --show-toplevel')[0] }, <bang>0)

" Override Colors command. You can safely do this in your .vimrc as fzf.vim
" will not override existing commands.
command! -bang Colors
  \ call fzf#vim#colors({'left': '15%', 'options': '--reverse --margin 30%,0'}, <bang>0)

" Augmenting Ag command using fzf#vim#with_preview function
"   * fzf#vim#with_preview([[options], [preview window], [toggle keys...]])
"     * For syntax-highlighting, Ruby and any of the following tools are required:
"       - Bat: https://github.com/sharkdp/bat
"       - Highlight: http://www.andre-simon.de/doku/highlight/en/highlight.php
"       - CodeRay: http://coderay.rubychan.de/
"       - Rouge: https://github.com/jneen/rouge
"
"   :Ag  - Start fzf with hidden preview window that can be enabled with "?" key
"   :Ag! - Start fzf in fullscreen and display the preview window above
command! -bang -nargs=* Ag
  \ call fzf#vim#ag(<q-args>,
  \                 <bang>0 ? fzf#vim#with_preview('up:60%')
  \                         : fzf#vim#with_preview('right:50%:hidden', '?'),
  \                 <bang>0)

" Similarly, we can apply it to fzf#vim#grep. To use ripgrep instead of ag:
command! -bang -nargs=* Rg
  \ call fzf#vim#grep(
  \   'rg --column --line-number --no-heading --color=always --smart-case '.shellescape(<q-args>), 1,
  \   <bang>0 ? fzf#vim#with_preview('up:60%')
  \           : fzf#vim#with_preview('right:50%:hidden', '?'),
  \   <bang>0)

" Likewise, Files command with preview window
command! -bang -nargs=? -complete=dir Files
  \ call fzf#vim#files(<q-args>, fzf#vim#with_preview(), <bang>0)

function! s:fzf_statusline()
  " Override statusline as you like
  highlight fzf1 ctermfg=161 ctermbg=251
  highlight fzf2 ctermfg=23 ctermbg=251
  highlight fzf3 ctermfg=237 ctermbg=251
  setlocal statusline=%#fzf1#\ >\ %#fzf2#fz%#fzf3#f
endfunction

autocmd! User FzfStatusLine call <SID>fzf_statusline()

" add shortcut for rg(Ripgrep)
nnoremap <c-y> :Rg<CR>


" mapping for ctrlp
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

" Enable the wildmenu which provides enhanced command completion when tab is pressed
set wildmenu
set wildmode=longest,full
set wildignore=*.pyc

" reverse line numbers only in insert mode
autocmd InsertEnter * :set relativenumber
autocmd InsertLeave * :set norelativenumber

" delete word
nnoremap <C-d> daw
" delete word and switch to insert mode
nnoremap <C-s> caw
" go to the last line
nnoremap <C-g> $
" useful tip, use y$ to yank/copy from cursor to end of line
" use yy to just yank the entire line, without code block

" to remove context inside quotes, brackets, or anything, use
" di" or di[ di{... you get the idea
"
" also, gg to go top, G to go bottom

" let g:molokai_original = 1
colorscheme gruvbox
"colorscheme plastic
"colorscheme monakai
"colorscheme blackboard
"colorscheme PaperColor

" Tab space by language
" customization by filetype
autocmd Filetype html setlocal ts=2 sts=2 sw=2 expandtab
autocmd Filetype ruby setlocal ts=2 sts=2 sw=2 expandtab

" 2 spaces indenting
au FileType haskell,lhaskell,yaml,clevercss,css,less,rst,htmljinja,html,htmldjango setlocal shiftwidth=2|setlocal softtabstop=2|setlocal tabstop=2

" 4 space indentin
au FileType python,scons setlocal shiftwidth=4|setlocal softtabstop=4|setlocal tabstop=4

au FileType tex,latex setlocal linebreak
au FileType text setlocal linebreak|setlocal showbreak=\ \

" go is special
au FileType go setlocal noexpandtab|setlocal tabstop=4|setlocal softtabstop=4|set shiftwidth=4

" cleanup whitespace on save
"au BufWritePre * :%s/\s\+$//e
"au BufWritePre *.go :Fmt

hi Normal guibg=NONE ctermbg=NONE

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
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

set listchars=eol:¬,tab:->,trail:~,extends:>,precedes:<

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
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline#extensions#tabline#buffer_nr_format = '%s:'
let g:vim_markdown_folding_disabled = 1
let g:vim_markdown_autowrite = 1
let g:vim_markdown_new_list_item_indent = 2
let g:vim_markdown_json_frontmatter = 1
let g:vim_markdown_frontmatter = 1
let g:xptemplate_brace_complete = '([{'

" enable rainbow parethesis
let g:rainbow_active = 1

" auto-pairs configuration
let g:AutoPairsFlyMode = 1
let g:AutoPairsShortcutBackInsert = '<M-b>'

" Supertab
let g:SuperTabDefaultCompletionType = "context"
let g:SuperTabDefaultCompletionType = "<C-X><C-O>"
let g:SuperTabLongestEnhanced = 1
let g:SuperTabContextTextOmniPrecedence = ['&omnifunc', '&completefunc']

" make jedi-vim use tabs
let g:jedi#use_tabs_not_buffers = 1
let g:jedi#popup_on_dot = 0
let g:jedi#completions_command = "<C-Space>"

" enable rainbow parethesis
let g:rainbow_active = 1

let vim_markdown_preview_hotkey='<C-M>'
let vim_markdown_preview_browser='Google Chrome'
let vim_markdown_preview_temp_file=1
let vim_mardown_preview_github=1

let g:gitgutter_realtime = 1
let g:gitgutter_eager = 1
set updatetime=250

" automatically open specific file patterns for hexmode
let g:hexmode_patterns = '*.bin,*.exe,*.dat,*.o'

" disable automatic comment indentation
set formatoptions-=cro

" specifically for c, cpp, java, js
au FileType c,cpp,java,js setlocal comments-=:// comments+=f://

" specifically for python
au FileType py setlocal comments-=:# comments+=f:#

" map keys while using vim-sneak
map f <Plug>Sneak_s
map F <Plug>Sneak_S

autocmd FileType javascript set formatprg=prettier\ --stdin

