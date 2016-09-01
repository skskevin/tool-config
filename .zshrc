# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh
 
# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="rkj-repos"
 
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
 
# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"
 
# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"
 
# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"
 
# Uncomment following line if you want to disable autosetting terminal title.
DISABLE_AUTO_TITLE="true"
 
# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"
 
# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git autojump docker dirhistory)
 
source $ZSH/oh-my-zsh.sh
 
# -------------------------------------------------------------------
# ENVIRONMENT [PATH]
# -------------------------------------------------------------------
export PATH=/usr/local/bin:/bin:/usr/sbin:/sbin:/usr/bin:/usr/X11/bin:/usr/local/git/bin:/opt/local/bin:~/.composer/vendor/bin
export PATH=/Applications/MAMP/bin/php/php5.5.26/bin:/Applications/MAMP/bin/apache2/bin:/Applications/MAMP/bin/:$PATH

# python virtualenv dir
export WORKON_HOME=~/.Envs
source /usr/local/bin/virtualenvwrapper.sh

ZSH_THEME_GIT_PROMPT_PREFIX=" on %{$fg[magenta]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[green]%}!"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg[green]%}"
ZSH_THEME_GIT_PROMPT_CLEAN=""
 
# -------------------------------------------------------------------
# Git aliases
# -------------------------------------------------------------------
 
alias ga='git add -A'
alias gp='git push'
alias gl='git log'
alias gs='git status'
alias gd='git diff'
alias gm='git commit -m'
alias gma='git commit -am'
alias gb='git branch'
alias gc='git checkout'
alias gra='git remote add'
alias grr='git remote rm'
alias gpu='git pull'
alias gcl='git clone'
alias gta='git tag -a -m'
alias gf='git reflog'
 
# leverage an alias from the ~/.gitconfig
alias gh='git hist'
alias glg1='git lg1'
alias glg2='git lg2'
alias glg='git lg'

# -------------------------------------------------------------------
# Tmux aliases
# -------------------------------------------------------------------
alias tns='tmux new -s'
alias tls='tmux list-session'
alias tlw='tmux list-window'
alias tsw='tmux switch -t '
alias tlc='tmux list-command'
alias tat='tmux attach -t'
alias trs='tmux rename-session -t'
alias tks='tmux kill-server'

# ------------------------------------
# Docker alias and function
# ------------------------------------
#
alias dimages="docker images"
alias drmi="docker rmi"
alias dsearch="docker search"
alias dpull="docker pull"
alias drun="docker run"
alias dlog="docker logs"
alias dkill="docker kill"
alias dstop="docker stop"
alias dpause="docker pause"
alias drename="docker rename"
alias dstop="docker stop"
alias drm="docker rm"
alias dps="docker ps"
alias dbuild="docker build"

# -------------------------------------------------------------------
# Capistrano aliases
# -------------------------------------------------------------------
 
alias capd='cap deploy'
 
# -------------------------------------------------------------------
# OTHER aliases
# -------------------------------------------------------------------
 
alias cls='clear'
alias ssh='ssh -v'
alias proxy='proxychains4'
source $HOME/.aliases
 
