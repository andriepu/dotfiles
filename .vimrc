set nocompatible
set encoding=utf-8

" Plugin Management - vim-plug {{{
" Require - https://github.com/junegunn/vim-plug
"
call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-surround'
Plug 'ruanyl/coverage.vim'
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-repeat'
Plug 'svermeulen/vim-easyclip'
Plug 'ntpeters/vim-better-whitespace'
Plug 'Yggdroot/LeaderF', { 'do': ':LeaderfInstallCExtension' }
Plug 'mileszs/ack.vim'
Plug 'vim-airline/vim-airline'
Plug 'w0rp/ale'
Plug 'Yggdroot/indentLine'
Plug 'tpope/vim-vinegar'
Plug 'jeffkreeftmeijer/vim-numbertoggle'
Plug 'junegunn/rainbow_parentheses.vim'
Plug 'wellle/targets.vim'
Plug 'easymotion/vim-easymotion'
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }

call plug#end()
"
" }}}

" General {{{
"
set clipboard=unnamed
set backspace=indent,start,eol                  " allow unrestricted backspacing in insert mode
let mapleader=','                               " leader is comma

" jk is escape
inoremap jk <esc>

set autoread                                    " set to auto read when file is changed from the outside

" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

" open/load .vimrc
nnoremap <leader>ev :vsp $MYVIMRC<CR>
nnoremap <leader>sv :source $MYVIMRC<CR>
"
" }}}

" Whitespaces {{{
"
set expandtab                                   " use spaces instead of tabs
set smarttab                                    " be smart when using tabs
set shiftwidth=2                                " use indents of 2 spaces
set tabstop=2                                   " number of visual spaces per TAB
set softtabstop=2                               " number of spaces in tab when editing
set autoindent                                  " auto indent
set smartindent                                 " smart indent
set wrap                                        " wrap lines
filetype plugin indent on
filetype plugin on
"
" }}}

" Editing {{{
"
" visual shifting (does not exit Visual mode)
vnoremap < <gv
vnoremap > >gv

set whichwrap+=<,>,h,l,[,]                      " allow arrows to wrap when used at beginning or end of lines

" move vertically by visual line
nnoremap k gk
vnoremap k gk
nnoremap j gj
vnoremap j gj

" move to beginning/end of line
nnoremap B ^
nnoremap E $

" move lines up/down.
" Those ugly symbols is mapping for ALT+[jk], because normal <A-j> and <A-k> dind't work.
" Got that ugly symbol from `$ sed -n l`
nnoremap ∆ :m .+1<CR>==
nnoremap ˚ :m .-2<CR>==
inoremap ∆ <Esc>:m .+1<CR>==gi
inoremap ˚ <Esc>:m .-2<CR>==gi
vnoremap ∆ :m '>+1<CR>gv=gv
vnoremap ˚ :m '<-2<CR>gv=gv

" move between autocomplete
inoremap <expr> j ((pumvisible())?("\<C-n>"):("j"))
inoremap <expr> k ((pumvisible())?("\<C-p>"):("k"))
"
" }}}

" Folding {{{
"
set foldenable                                  " enable folding
set foldmethod=indent                           " fold by indentation. It's faster than `syntax`
set foldlevelstart=10                           " open most folds by default
set foldnestmax=10                              " 10 nested fold max

" default fold to level 3 for .json
autocmd BufRead,BufNewFile *.json set foldlevel=3
"
" }}}

" History, Backup, Swap {{{
"
" turn backup off, since most stuff is in SVN, git et.c anyway...
set nobackup
set nowb
set noswapfile
set history=100                                 " default is 20

" redo
nnoremap re <C-r>
"
" }}}

" Colors {{{
"
syntax on                                   " enable syntax processing
set background=dark
"
" }}}

" UI Config {{{
"
set lazyredraw                                  " redraw only when we need to.
set number relativenumber                       " show line numbers as relative number
set mouse=a
hi MatchParen cterm=bold ctermbg=none ctermfg=DarkRed
" }}}

" Searching {{{
"
set ignorecase                                  " ignore case when searching
set smartcase                                   " when searching try to be smart about cases
set hlsearch                                    " search as characters are entered

" turn off search highlight
nnoremap <leader><space> :nohlsearch<CR>
"
" }}}

" Tab window {{{
"
" Useful mappings for managing tabs
map <leader>tn :tabnew<cr>
map <leader>to :tabonly<cr>
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove
map <leader>t<leader> :tabnext

" Opens a new tab with the current buffer's path
" Super useful when editing files in the same directory
map <leader>te :tabedit <c-r>=expand("%:p:h")<cr>/
"
" }}}

" Panes {{{
"
set splitbelow                  " open new vsplit to right
set splitright                  " open new split to below

" smart way to move between panes
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l
"
" }}}

" Filetype specifix {{{
"
autocmd BufNewFile,BufRead *.sh   set filetype=zsh
"
" }}}

" Plugin - vim-easyclip {{{
"
nmap M <Plug>MoveMotionEndOfLinePlug
"
" }}}

"" Plugin - ag {{{
""
"" start from root directory
"let g:ag_working_path_mode="r"
"
"nnoremap <leader>a :Ag<Space>
""
"" }}}

" Plugin - ale {{{
"
" keep sign gutter open
let g:ale_sign_column_always = 1

let g:ale_lint_on_text_changed = 'normal'
let g:ale_lint_on_enter = 0
let g:ale_lint_on_save = 1

let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'

" }}}

" Plugin - vim airline {{{
"
" nice error status for ale
let g:airline#extensions#ale#enabled = 1
"
" }}}

" Plugin - LeaderF {{{
"
let g:Lf_ShowDevIcons = 0
let g:Lf_WindowPosition = 'popup'
let g:Lf_PreviewInPopup = 1
let g:Lf_DefaultMode='NameOnly'
let g:Lf_UseVersionControlTool = 0
"
" }}}

" Plugin - vim-polyglot {{{
"
" vim-json
let g:vim_json_syntax_conceal = 1

" vim-markdown
let g:vim_markdown_conceal = 0
"
" }}}

" Plugin - coverage.vim {{{
"
let g:coverage_json_report_path = 'coverage/coverage-final.json'
let g:coverage_sign_uncovered = '⦿'
let g:coverage_interval = 5000
let g:coverage_show_covered = 0
let g:coverage_show_uncovered = 1
"
" }}}

" Plugin - ack.vim {{{
"
cnoreabbrev Ack Ack!
nnoremap <Leader>a :Ack!<Space>
"
" }}}

set modelines=1
" vim:set foldmethod=marker foldlevel=0:
