" vim-plug install:
" curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
"    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

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
"" autocompletion
Plug 'Shougo/deoplete.nvim'
Plug 'ervandew/supertab'

"" search
Plug 'junegunn/fzf.vim'

"" editor enhancements
Plug 'ConradIrwin/vim-bracketed-paste'
Plug 'tmhedberg/matchit'
Plug 'tpope/vim-surround'
Plug 'scrooloose/nerdcommenter'
Plug 'majutsushi/tagbar'
Plug 'mattn/emmet-vim'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-vinegar'
Plug 'SirVer/ultisnips'
Plug 'scrooloose/nerdtree'
Plug 'Shougo/unite.vim'
Plug 'Yggdroot/indentLine'
Plug 'vim-airline/vim-airline'

"" git
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'

"" html/css/js
Plug 'pangloss/vim-javascript'
Plug 'isRuslan/vim-es6'
Plug 'othree/html5.vim'
Plug 'hail2u/vim-css3-syntax'

"" frontend template engines/frameworks
Plug 'digitaltoad/vim-pug', { 'for': 'pug' }
Plug 'Epitrochoid/marko-vim-syntax', { 'for': 'marko' }
Plug 'posva/vim-vue'
Plug 'tpope/vim-liquid'
Plug 'mxw/vim-jsx'

"" backend frameworks
Plug 'tpope/vim-rails'

"" markdown/yaml/toml
Plug 'cespare/vim-toml'
Plug 'gabrielelana/vim-markdown'

"" ruby/elixir
Plug 'tpope/vim-bundler'
Plug 'vim-ruby/vim-ruby'
Plug 'elixir-editors/vim-elixir'

"" go
Plug 'therobut/vim-amber', { 'for': 'amber' }

"" syntax/error checking
Plug 'w0rp/ale'

"" documentation
Plug 'rhysd/devdocs.vim'

"" themes
Plug 'altercation/vim-colors-solarized'
Plug 'vim-airline/vim-airline-themes'
Plug 'jonathanfilip/vim-lucius'
Plug 'hzchirs/vim-material'
Plug 'YorickPeterse/happy_hacking.vim'
Plug 'ajmwagar/vim-deus'
Plug 'colepeters/spacemacs-theme.vim'
Plug 'liuchengxu/space-vim-dark'
Plug 'trevordmiller/nova-vim'
Plug 'christophermca/meta5'
Plug 'MaxSt/FlatColor'
Plug 'dracula/vim'

" Required:
call plug#end()

" end plugins

" Configuration settings

"" mappings
let mapleader = "\<Space>"
noremap <Leader>w :w<CR>
noremap <Leader>q :q<CR>
noremap <Leader>f :Files<CR>
noremap <Leader>s :Ag<CR>
noremap <Leader>r :Buffers<CR>
noremap <Leader><Leader> :e ~/repos/configs/nvim/init.vim<CR>
noremap <Leader>g :Gstatus<CR>

"" colors
set background=dark
set termguicolors
colorscheme meta5
" colorscheme solarized
" colorscheme flatcolor
" colorscheme dracula
" colorscheme vim-material
" colorscheme deus
" colorscheme spacemacs-theme
" colorscheme space-vim-dark
" colorscheme happey_hacking

"" defaults
set encoding=utf-8
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

""" trim whitespace on save
autocmd BufWritePre * %s/\s\+$//e

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
let g:UltiSnipsSnippetsDir=$HOME . '/repos/configs/nvim/UltiSnips'
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
let g:airline_solarized_bg='dark'
let g:airline#extensions#tabline#enabled=1
let g:airline_powerline_fonts=1
let g:airline_theme='solarized'
set laststatus=2

""" fzf
let g:fzf_layout = { 'up': '28%' }
function! s:fzf_statusline()
  " Override statusline as you like
  highlight fzf1 ctermfg=161 ctermbg=251
  highlight fzf2 ctermfg=23 ctermbg=251
  highlight fzf3 ctermfg=237 ctermbg=251
  setlocal statusline=%#fzf1#\ >\ %#fzf2#fz%#fzf3#f
endfunction
autocmd! User FzfStatusLine call <SID>fzf_statusline()
