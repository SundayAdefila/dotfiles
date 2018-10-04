# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# How often to auto-update (in days).
export UPDATE_ZSH_DAYS=1

# Define java home for intellij?
export JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk1.8.0_121.jdk/Contents/Home"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
  osx
)

# User configuration
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Add projects to cdpath
export CDPATH=$CDPATH:~/workspace/transfixio:~/workspace/cahootify:~/workspace/personal:~/workspace/frintern:~/workspace/bitcamp:~/workspace/Downsideupmedia

# Git aliases
alias gs='git status '
alias ga='git add '
alias gb='git branch '
alias gc='git commit'
alias gd='git diff'
alias go='git checkout '
alias gk='gitk --all&'
alias gx='gitx --all'
alias got='git '
alias get='git '

alias vi='vi -p'
alias home='cd ~'
# make pyenv available (already installed via brew-cask in osx_bootstrap.sh)
eval "$(pyenv init -)"

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
export PATH="$HOME/.npm-packages/bin:$PATH" ### Added by the Bluemix CLI
export PATH="~/Library/Python/2.7/bin:$PATH"

[ -f $HOME/.travis/travis.sh ] && source $HOME/.travis/travis.sh

autoload -U compinit && compinit
autoload -U bashcompinit && bashcompinit

# export tokens and credentials to environment
[ -f ~/dotfiles/env_vars.sh ] && source ~/dotfiles/env_vars.sh
# source local functions
source ~/dotfiles/functions.sh

[ -f $TRANSFIX_HOME/transfix-dev-box/scripts/transfix.sh ] && source $TRANSFIX_HOME/transfix-dev-box/scripts/transfix.sh
export PATH="/usr/local/sbin:$PATH"
