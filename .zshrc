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
plugins=(git autojump docker)
 
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
# # Get latest container ID
alias dl="docker ps -l -q"

# # Get container process
alias dps="docker ps"

# # Get process included stop container
alias dpa="docker ps -a"

# # Get images
alias di="docker images"

# # Get container IP
alias dip="docker inspect --format '{{ .NetworkSettings.IPAddress  }}'"

# # Run deamonized container, e.g., $dkd base /bin/echo hello
alias dkd="docker run -d -P"

# # Run interactive container, e.g., $dki base /bin/bash
alias dki="docker run -i -t -P"

# # Execute interactive container, e.g., $dex base /bin/bash
alias dex="docker exec -i -t"

# # Stop all containers
dstop() { docker stop $(docker ps -a -q);  }

# # Remove all containers
drm() { docker rm $(docker ps -a -q);  }

# # Stop and Remove all containers
alias drmf='docker stop $(docker ps -a -q) && docker rm $(docker ps -a -q)'

# # Remove all images
dri() { docker rmi $(docker images -q);  }

# # Dockerfile build, e.g., $dbu tcnksm/test 
dbu() { docker build -t=$1 .;  }

# # Show all alias related docker
dalias() { alias | grep 'docker' | sed "s/^\([^=]*\)=\(.*\)/\1 => \2/"| sed "s/['|\']//g" | sort; }"']" }

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
 
