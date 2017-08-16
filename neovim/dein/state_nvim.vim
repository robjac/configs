if g:dein#_cache_version != 100 | throw 'Cache loading error' | endif
let [plugins, ftplugin] = dein#load_cache_raw(['~/repos/neovim/init.vim'])
if empty(plugins) | throw 'Cache loading error' | endif
let g:dein#_plugins = plugins
let g:dein#_ftplugin = ftplugin
let g:dein#_base_path = '/Users/josh/repos/neovim/dein'
let g:dein#_runtime_path = '/Users/josh/repos/neovim/dein/.cache/init.vim/.dein'
let g:dein#_cache_path = '/Users/josh/repos/neovim/dein/.cache/init.vim'
let &runtimepath = '/Users/josh/.config/nvim,/etc/xdg/nvim,/Users/josh/.local/share/nvim/site,/usr/local/share/nvim/site,/Users/josh/repos/neovim/dein/repos/github.com/Shougo/dein.vim,/Users/josh/repos/neovim/dein/.cache/init.vim/.dein,/usr/share/nvim/site,/usr/local/Cellar/neovim/0.2.0_1/share/nvim/runtime,/Users/josh/repos/neovim/dein/.cache/init.vim/.dein/after,/usr/share/nvim/site/after,/usr/local/share/nvim/site/after,/Users/josh/.local/share/nvim/site/after,/etc/xdg/nvim/after,/Users/josh/.config/nvim/after,/Users/josh/repos/neovim/dein/github.com/Shougo/dein.vim,/usr/local/opt/fzf'
filetype off
