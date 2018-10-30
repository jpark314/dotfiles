# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/home/jpark/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="powerlevel9k/powerlevel9k"

# powerline customization
POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_RPROMPT_ON_NEWLINE=true
POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX="↱"
POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="↳ "

POWERLEVEL9K_DIR_HOME_BACKGROUND='6'
POWERLEVEL9K_DIR_HOME_SUBFOLDER_BACKGROUND='6'
POWERLEVEL9K_DIR_DEFAULT_BACKGROUND='6'
POWERLEVEL9K_NODE_VERSION_BACKGROUND='22'
POWERLEVEL9K_NVM_BACKGROUND='28'
POWERLEVEL9K_NVM_FOREGROUND='15'

POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(context history dir node_version vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status root_indicator background_jobs load ram virtualenv rbenv rvm nvm time)
# removed battery

POWERLEVEL9K_BATTERY_CHARGING='yellow'
POWERLEVEL9K_BATTERY_CHARGED='green'
POWERLEVEL9K_BATTERY_DISCONNECTED='$DEFAULT_COLOR'
POWERLEVEL9K_BATTERY_LOW_THRESHOLD='10'
POWERLEVEL9K_BATTERY_LOW_COLOR='red'
#POWERLEVEL9K_BATTERY_ICON='\uf1e6 '

#POWERLEVEL9K_VCS_MODIFIED_BACKGROUND='yellow'
#POWERLEVEL9K_VCS_UNTRACKED_BACKGROUND='red'
#POWERLEVEL9K_VCS_UNTRACKED_ICON='?'

#POWERLEVEL9K_CUSTOM_TIME_FORMAT="%D{\uf017 %H:%M:%S}"
#POWERLEVEL9K_TIME_FORMAT="%D{\uf017 %H:%M \uf073 %d.%m.%y}"

POWERLEVEL9K_SHORTEN_DIR_LENGTH=4
POWERLEVEL9K_SHORTEN_STRATEGY="truncate_beginning"
POWERLEVEL9K_TIME_BACKGROUND="black"
POWERLEVEL9K_TIME_FOREGROUND="249"
#POWERLEVEL9K_TIME_FORMAT="\UF43A %D{%I:%M  \UF133  %m.%d.%y}"
POWERLEVEL9K_RVM_BACKGROUND="black"
POWERLEVEL9K_RVM_FOREGROUND="249"
POWERLEVEL9K_RVM_VISUAL_IDENTIFIER_COLOR="red"
#POWERLEVEL9K_STATUS_VERBOSE=false
POWERLEVEL9K_VCS_CLEAN_FOREGROUND='black'
POWERLEVEL9K_VCS_CLEAN_BACKGROUND='green'
POWERLEVEL9K_VCS_UNTRACKED_FOREGROUND='white'
POWERLEVEL9K_VCS_UNTRACKED_BACKGROUND='black'
POWERLEVEL9K_VCS_MODIFIED_FOREGROUND='black'
POWERLEVEL9K_VCS_MODIFIED_BACKGROUND='yellow'

POWERLEVEL9K_RAM_BACKGROUND='blue'
POWERLEVEL9K_RAM_FOREGROUND='white'

# Set list of themes to load
# Setting this variable when ZSH_THEME=random
# cause zsh load theme from this variable instead of
# looking in ~/.oh-my-zsh/themes/
# An empty array have no effect
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
  fasd
  tmuxinator
)

source $ZSH/oh-my-zsh.sh

# gsettings get org.gnome.desktop.input-sources xkb-options ['ctrl:nocaps']
# the above method is to convert capslock to control
# the below method is to convert capslock to esc
# gsettings get org.gnome.desktop.input-sources xkb-options ['caps:esc']

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

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

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
alias zshconfig="mate ~/.zshrc"
alias ohmyzsh="mate ~/.oh-my-zsh"

export PATH=$PATH:~/.local/bin
export PATH=$PATH:/.local/bin/jupyter-notebook

export PATH=/home/jpark/Downloads/swift-4.1.1-RELEASE-ubuntu16.10/usr/bin:$PATH

export PATH=$PATH:/usr/local/go/bin

export PATH=~/.npm-global/bin:$PATH

export PATH=$HOME/.node_modules_global/bin:$PATH

export PATH=$HOME/.config/composer/vendor/bin:$PATH

#############################Customizations###################################
source /home/jpark/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

alias lugssh='ssh ssh.linux.ucla.edu -l ferris314'
alias lugssh2='ssh linux.ucla.edu -l ferris314'

alias pissh='ssh raspberrypi.local -l pi'

alias chrome='google-chrome'

alias pdf='xdg-open'

alias mux='tmuxinator'

alias boottime='systemd-analyze time'

alias joomscan='perl ~/Documents/joomscan/joomscan.pl'

alias julia='source ~/Documents/julia-1.0.1/bin/julia'

alias processing='source ~/Documents/processing-3.4/processing'

alias aa='arp -a'

alias bcap='sudo bettercap'

alias stk='sudo -i setoolkit'

alias hacktools='source ~/Documents/scripts/hacktools.sh'

alias composer='php ~/composer.phar'

# alias for enabling trackpoint settings under tmpfiles.d
alias trackpoint='sudo systemd-tmpfiles --prefix=/sys --create'
alias lua='lua5.3'
alias luac='luac5.3'

alias h='htop'
alias t='tmux -f ~/.tmux.conf'
alias tk='tmux kill-server'
alias tl='tmux ls'
alias ts='tmux source-file ~/.tmux.conf'
alias e='exit'
alias c='clear'

alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias more='more -R'
alias less='less -R'
alias tree='tree -C'
alias diff='diff -u'

alias cl='colorls'
alias ll='ls -lv'
alias la='ls -al'
alias du='du -hs'
alias df='df -h'

alias ps='ps -f'
alias pse='ps -ef'
alias psg='ps -ef | grep'

alias ga='git add'
alias gaa='git add --all'
alias gca='git commit -a- m'
alias git-push='git push origin -u'
alias git-log='git log --oneline --decorate --graph --all'

alias gc='git commit'
alias gcm='git commit -m'
alias gi='git init'
alias gp='git push'
alias gpu='git push -u'
alias gs='git status'
alias gv='git remote -v'
alias gb='git branch'
alias gbb='git branch -b'

alias pping='~/Documents/prettyping/prettyping'

alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='dgrep --color=auto'

alias traceroute='traceroute -n' # don't do reverse lookup

alias ws='startprocess wireshark'

alias battery='upower -i /org/freedesktop/UPower/devices/battery_BAT0'

# shortened as git history - alias to tig
alias gh='tig'

alias di='docker images'
alias dpa='docker ps -a'
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"

alias tarzip='tar -czvf'
alias untar='tar -xvzf'

alias gor='go run'
# Add path for golang
export PATH=$PATH:/usr/local/go/bin

alias tcpdump_r='sudo tcpdump -n -vv -tttt -i lo0'
# -i lo :  loopback interface
# -n    :  no dns resolution
# -tttt :  human readable time stamp
# -vv   :  verbose
# -X    :  show contents
# filters  :  host, port, portrange, dst/src, net
# tcp flags:  S SYNC
#             . ACK
#             F FIN
#             R RST
#             P PUSH

# enable zsh-autosuggestions
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

# Other plugins installed, fzf, ngrok, tig, jq, tmuxinator, fasd, xclip, lnav, ranger, realpath, ncdu, peco

# start tmux at startup
#if [ -z "$TMUX" ]
#then
#  tmux attach -t TMUX || tmux new -s TMUX
#fi
