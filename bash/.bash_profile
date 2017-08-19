export PATH=$PATH:/usr/local/bin:/usr/bin:/bin:/usr/sbin
export PATH="/usr/local/sbin:$PATH"
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:/Library/Haskell/bin
export PATH=$HOME/.yarn/bin:$PATH
export PATH=/usr/local/opt/ncurses/bin:$PATH
export PATH="/usr/local/heroku/bin:$PATH"
export VMAIL_HTML_PART_READER='elinks -dump'
source /usr/local/bin/virtualenvwrapper.sh

source ~/.profile

# fzf search awesomeness
[ -f ~/.fzf.bash ] && source ~/.fzf.bash

# auto node version switcher - FTW
[[ -s "$HOME/.avn/bin/avn.sh" ]] && source "$HOME/.avn/bin/avn.sh" # load avn

# set nvm as node manager
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Path to the bash it configuration
export BASH_IT="/Users/josh/.bash_it"

# Lock and Load a custom theme file
# location /.bash_it/themes/
export BASH_IT_THEME='bobby'

# (Advanced): Change this to the name of your remote repo if you
# cloned bash-it with a remote other than origin such as `bash-it`.
# export BASH_IT_REMOTE='bash-it'

# Your place for hosting Git repos. I use this for private repos.
export GIT_HOSTING='git@git.domain.com'

# Don't check mail when opening terminal.
unset MAILCHECK

# Change this to your console based IRC client of choice.
export IRC_CLIENT='irssi'

# Set this to the command you use for todo.txt-cli
export TODO="t"

# Set this to false to turn off version control status checking within the prompt for all themes
export SCM_CHECK=true

# Set Xterm/screen/Tmux title with only a short hostname.
# Uncomment this (or set SHORT_HOSTNAME to something else),
# Will otherwise fall back on $HOSTNAME.
#export SHORT_HOSTNAME=$(hostname -s)

# Set Xterm/screen/Tmux title with only a short username.
# Uncomment this (or set SHORT_USER to something else),
# Will otherwise fall back on $USER.
#export SHORT_USER=${USER:0:8}

# Set Xterm/screen/Tmux title with shortened command and directory.
# Uncomment this to set.
#export SHORT_TERM_LINE=true

# Set vcprompt executable path for scm advance info in prompt (demula theme)
# https://github.com/djl/vcprompt
#export VCPROMPT_EXECUTABLE=~/.vcprompt/bin/vcprompt

# (Advanced): Uncomment this to make Bash-it reload itself automatically
# after enabling or disabling aliases, plugins, and completions.
# export BASH_IT_AUTOMATIC_RELOAD_AFTER_CONFIG_CHANGE=1

eval "$(thefuck --alias)"
eval "$(rbenv init -)"
eval "$(docker-machine env default)"

vim="nvim -u ~/repos/configs/neovim/init.vim"

alias vim=$vim
alias subl="/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl"
alias c='clear'
alias e='emacs -nw'
alias ctags="`brew --prefix`/bin/ctags"
alias bej='bundle exec jekyll'
alias ber='bundle exec rails'
alias bem='bundle exec middleman'
alias hs='hugo server -w'
alias hn='hugo new'
alias dku='docker-compose up'
alias dkd='docker-compose down'
alias dkb='docker-compose build'
alias dkr='docker-compose run' # followed by service name and options
alias vimconfig="$vim ~/repos/configs/neovim/init.vim"
alias bashconfig="$vim ~/repos/configs/bash/.bash_profile"
alias gitconfig="$vim ~/repos/configs/git/.gitconfig"
alias devbox='ssh jwaller@67.207.93.255'

# git aliases
alias gst='git status'
alias gc='git commit'
alias ga='git add'
alias gp='git push'
alias gpom='git push origin master'
alias gl='git pull'
alias gf='git fetch'
alias gco='git checkout'
alias gcb='git checkout -b'
alias gr='git remote'

# remove zcompdump
rm -rf ~/.zcompdump*

# Load Bash It
source "$BASH_IT"/bash_it.sh
