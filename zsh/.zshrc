# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:/usr/local/sbin:$PATH
export PATH="$HOME/.yarn/bin:$PATH"

# User configuration
. `brew --prefix`/etc/profile.d/z.sh

#zsh-users/zsh-autosuggestions - git clone git://github.com/zsh-users/zsh-autosuggestions $ZSH_CUSTOM/plugins/zsh-autosuggestions
# plugins=(zsh-autosuggestions)

#zsh-users/zsh-syntax-highlighting - git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
# plugins=( [plugins...] zsh-syntax-highlighting)

#zsh-users/zsh-completions - git clone https://github.com/zsh-users/zsh-completions ~/.oh-my-zsh/custom/plugins/zsh-completions
# plugins=(… zsh-completions)
# autoload -U compinit && compinit

ZSH_THEME="lambda"
# ZSH_THEME="dracula"

plugins=(
	colorize
	common-aliases
	command-not-found
	git
	golang
	nvm
	npm
	ruby
	rvm
	osx
	rake
	node
	vasyharan/zsh-brew-services
	yarn
	z
	zsh-autosuggestions
	zsh-completions
	zsh-syntax-highlighting
)
autoload -U compinit && compinit

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh
source $ZSH/oh-my-zsh.sh

# thefuck...
eval "$(thefuck --alias)"

# aliases
vim="nvim -u ~/repos/neovim/init.vim"

alias vim=$vim
alias subl="/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl"
alias zshconfig="$vim ~/repos/zsh/.zshrc"
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
alias vimconfig="$vim ~/repos/neovim/init.vim"
alias devbox='ssh jwaller@67.207.93.255'

# remove zcompdump
rm -rf ~/.zcompdump*

# exports
[[ -s "$HOME/.avn/bin/avn.sh" ]] && source "$HOME/.avn/bin/avn.sh" # load avn
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:/Library/Haskell/bin
export PATH=$HOME/.yarn/bin:$PATH
export PATH=/usr/local/opt/ncurses/bin:$PATH

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
