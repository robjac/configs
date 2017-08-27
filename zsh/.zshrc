source ~/.zplug/init.zsh

# Install plugins if there are plugins that have not been installed
if ! zplug check --verbose; then
  printf "Install? [y/N]: "
  if read -q; then
    echo; zplug install
  fi
fi

# User configuration
. `brew --prefix`/etc/profile.d/z.sh

# ZSH_THEME="dracula"

### PLUGINS

# lambda theme
zplug "halfo/lambda-mod-zsh-theme", as:theme, from:github, defer:2

# Make sure to use double quotes
zplug "zsh-users/zsh-history-substring-search"

# Syntax highlighting
zplug "zsh-users/zsh-syntax-highlighting", defer:2

# auto completions
zplug "zsh-users/zsh-completions"

# async
zplug "mafredri/zsh-async"

# history
zplug "lib/history", from:oh-my-zsh

# Auto ls when cd'ing directory
zplug "desyncr/auto-ls"

# Rake task completion
zplug "unixorn/rake-completion.zshplugin"

# cabal completion
zplug "d12frosted/cabal.plugin.zsh"

# vim mode
zplug "sharat87/zsh-vim-mode"

# autopair
zplug "hlissner/zsh-autopair"

# auto nvm use
zplug "tomsquest/nvm-auto-use.zsh"

# iterm tab colors
zplug "tysonwolker/iterm-tab-colors"

# fast syntax highlighting
zplug "zdharma/fast-syntax-highlighting"

# caniuse
zplug "walesmd/caniuse.plugin.zsh"

zplug "plugins/brew", from:oh-my-zsh, defer:2
zplug "plugins/brew-cask", from:oh-my-zsh, defer:2
zplug "plugins/git",   from:oh-my-zsh, defer:2

ZSH_THEME="lambda"

autoload -U compinit && compinit

# thefuck...
eval "$(thefuck --alias)"

# aliases
vim="nvim -u ~/repos/configs/nvim/init.vim"

alias vim=$vim
alias subl="/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl"
alias zshconfig="$vim ~/repos/configs/zsh/.zshrc"
alias ohmyzsh="$vim ~/.oh-my-zsh"
alias c='clear'
alias e='emacs -nw'
alias ctags="`brew --prefix`/bin/ctags"
alias bej='bundle exec jekyll'
alias ber='bundle exec rails'
alias bem='bundle exec middleman'
alias hs='hugo server'
alias hn='hugo new'
alias dku='docker-compose up'
alias dkd='docker-compose down'
alias dkb='docker-compose build'
alias dkr='docker-compose run' # followed by service name and options
alias vimconfig="$vim ~/repos/configs/nvim/init.vim"
alias devbox='ssh jwaller@67.207.93.255'

# remove zcompdump
rm -rf ~/.zcompdump*

# exports
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:/Library/Haskell/bin
export PATH=$HOME/.yarn/bin:$PATH
export PATH=/usr/local/opt/ncurses/bin:$PATH
export PATH=$HOME/.rbenv/bin:$PATH
eval "$(rbenv init -)"

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Source zplug
zplug load
