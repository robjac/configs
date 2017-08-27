if &compatible
  set nocompatible
endif

" Required:
set rtp+=/usr/local/opt/fzf


" Required:

" START Vim-Plug
" Required:
call plug#begin('~/.local/share/nvim/plugged')

  " Plugins
  Plug 'Shougo/deoplete.nvim'
  Plug 'ervandew/supertab'
  Plug 'junegunn/fzf.vim'
  Plug 'ConradIrwin/vim-bracketed-paste'
  Plug 'airblade/vim-gitgutter'
  Plug 'w0rp/ale'
  Plug 'pangloss/vim-javascript'
  Plug 'isRuslan/vim-es6'
  Plug 'othree/html5.vim'
  Plug 'hail2u/vim-css3-syntax'
  Plug 'tmhedberg/matchit'
  Plug 'tpope/vim-bundler'
  Plug 'tpope/vim-vinegar'
  Plug 'tpope/vim-surround'
  Plug 'tpope/vim-fugitive'
  Plug 'scrooloose/nerdcommenter'
  Plug 'majutsushi/tagbar'
  Plug 'mattn/emmet-vim'
  Plug 'jiangmiao/auto-pairs'
  Plug 'SirVer/ultisnips'
  Plug 'cespare/vim-toml'
  Plug 'rhysd/devdocs.vim'
  Plug 'scrooloose/nerdtree'
  Plug 'gabrielelana/vim-markdown'
  Plug 'Shougo/unite.vim'
  Plug 'Yggdroot/indentLine'
  Plug 'vim-airline/vim-airline'
  Plug 'justinmk/vim-sneak'
  Plug 'vim-ruby/vim-ruby'

  " Addon Template Engines and Frameworks
  Plug 'therobut/vim-amber'
  Plug 'Epitrochoid/marko-vim-syntax'
  Plug 'posva/vim-vue'
  Plug 'digitaltoad/vim-pug'
  Plug 'tpope/vim-rails'
  Plug 'tpope/vim-liquid'
  Plug 'mxw/vim-jsx'
  Plug 'vim-airline/vim-airline-themes'

  " Addon Themes
  Plug 'jonathanfilip/vim-lucius'
  Plug 'trevordmiller/nova-vim'
  Plug 'MaxSt/FlatColor'
  Plug 'dracula/vim'

  " You can specify revision/branch/tag.
  Plug 'Shougo/vimshell', { 'rev': '3787e5' }

  " Required:
  call plug#end()
endif

" end plugins

" Required:
filetype plugin indent on
syntax on

" Configuration settings

"" mappings
let mapleader = "\<Space>"
noremap <Leader>w :w<CR>
noremap <Leader>q :q<CR>
noremap <Leader>f :FZF<CR>
noremap <Leader>r :Buffers<CR>
noremap <Leader><Leader> :e ~/repos/configs/neovim/init.vim<CR>
noremap <Leader>g :Gstatus<CR>

"" colors
colorscheme nova
" colorscheme flatcolor
" colorscheme dracula

"" defaults
set number
set cursorline
set backspace=indent,eol,start
set expandtab ts=2 sw=2 ai
set tabstop=2
set softtabstop=2
set shiftwidth=2
set autoindent
set smartindent
set noswapfile
set nowrap
set conceallevel=1
set hlsearch
set noerrorbells
set history=10000
set colorcolumn=80
set undolevels=500
set mouse=r
let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1
set cc+=80
highlight ColorColumn guibg=#222222

""" escape
inoremap wj <Esc>

""" move current line up 1 or down 1
nnoremap ˚ :m .-2<CR>==
nnoremap ∆ :m .+1<CR>==

""" Terminal
:au BufEnter * if &buftype == 'terminal' | :startinsert | endif
tnoremap <Esc> <C-\><C-n>

""" window settings
nnoremap <Tab> <c-w>w
nnoremap <bs> <c-w>W

""" resize panes with arrow keys
nnoremap <Left> :vertical resize -1<CR>
nnoremap <Right> :vertical resize +1<CR>
nnoremap <Up> :resize -1<CR>
nnoremap <Down> :resize +1<CR>

" Disable arrow keys completely in Insert Mode
imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>

""" tab between 2 most recent buffers
nnoremap <Leader><Tab> :b#<CR>

""" remember last line
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
endif

"" javascript
let g:jsx_ext_required = 0

" PLUGIN SETTINGS

"" deoplete settings
let g:deoplete#enable_at_startup=1
let g:deoplete#enable_ignore_case=1
let g:deoplete#enable_smart_case=1
let g:deoplete#auto_completion_start_length=1
let g:deoplete#enable_fuzzy_completion=1
set updatetime=300

"" ale
let g:ale_linters = {
\   'javascript': ['eslint'],
\}
let g:ale_fixers = {
\		'javascript': ['eslint'],
\}
let g:ale_sign_column_always = 1
let g:ale_fix_on_save = 1

"" NERDCommenter
let g:NERDSpaceDelims = 1
let g:NERDDefaultAlign = 'left'
let g:NERDTrimTrailingWhitespace = 1

"" tagbar - view method/functions
noremap <Leader>d :TagbarToggle<CR>

"" emmet - use ;j to autocomplete
imap <expr> jj emmet#expandAbbrIntelligent("\jj")
let g:user_emmet_install_global = 1

"" ultisnips
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-n>"
let g:UltiSnipsJumpBackwardTrigger="<c-b>"
let g:UltiSnipsEditSplit="horizontal"
let g:UltiSnipsSnippetsDir=$HOME . '/.config/nvim/UltiSnips'
let g:UltiSnipsEnableSnipMate = 0

" au FileType javascript :UltiSnipsAddFiletypes javascript

"" DevDocs
nmap <C-d> <Plug>(devdocs-under-cursor)

""" NERDTree
map <Leader>e :NERDTreeToggle<CR>
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

""" NERDTree Git
let g:NERDTreeIndicatorMapCustom = {
      \ "Modified"  : "✹",
      \ "Staged"    : "✚",
      \ "Untracked" : "✭",
      \ "Renamed"   : "➜",
      \ "Unmerged"  : "═",
      \ "Deleted"   : "✖",
      \ "Dirty"     : "✗",
      \ "Clean"     : "✔︎",
      \ 'Ignored'   : '☒',
      \ "Unknown"   : "?"
      \ }

""" indentline
let g:indentLine_enabled = 1
let g:indentLine_char = "|"

""" vimairline
let g:airline#extensions#tabline#enabled=1
let g:airline_powerline_fonts=1
set laststatus=2

""" vim-sneak
let g:sneak#s_next = 1
nmap f <Plug>Sneak_f
nmap F <Plug>Sneak_F
xmap f <Plug>Sneak_f
xmap F <Plug>Sneak_F
omap f <Plug>Sneak_f
omap F <Plug>Sneak_F
