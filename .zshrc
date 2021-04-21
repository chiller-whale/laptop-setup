export PATH="$HOME/bin:/usr/local/bin:$PATH;$PATH:$HOME/.nvm;"

# Path to your oh-my-zsh installation.
export ZSH=/Users/tylerfreeman/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="agnoster"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(osx git colored-man-pages colorize npm)

source $ZSH/oh-my-zsh.sh


# Load NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

# Commands
alias c="clear"
alias gs="git status"
alias gst="git add -A & git stash"
alias gp="git push -u origin HEAD"
alias gcb="git checkout -B"
alias gpd="git pull --rebase origin develop"
alias w="cd /Users/tylerfreeman/workspace"
alias gc="git checkout"
alias i="ccat"

