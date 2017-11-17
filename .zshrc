# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/Users/jpark314/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
# ZSH_THEME="robbyrussell"
ZSH_THEME="spaceship"
POWERLEVEL9K_MODE='awesome-patched'
# ZSH_THEME="powerlevel9k/powerlevel9k"
# ZSH_THEME="avit"

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
HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

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

###########################General Path###############################
export PATH=/usr/local/bin:$PATH
export PATH=~/.local/bin:$PATH
PATH="$PATH:$HOME/anaconda/bin:/usr/bin:/bin:/usr/sbin:/sbin"

############################Go Lang###################################
export GOPATH=$HOME/golang
#export GOROOT=/usr/local/opt/go/libexec
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:$GOROOT/bin
export PATH=$PATH:/usr/local/go/bin

##########################Customizations##############################
#Virtualbox - Ubuntu // just a test-demo ubuntu virtual machine
alias ubuntu='VBoxManage startvm "ubuntu" --type headless'
vshutdown() { VBoxManage controlvm "$1" acpipowerbutton; }
alias ubuntussh='ssh -p 2222 127.0.0.1 -l jpark'

#Virtualbox - CentOS
alias centos='VBoxManage startvm "centos" --type headless'
vshutdown() { VBoxManage controlvm "$1" acpipowerbutton; }
alias centosssh='ssh -p 8080 127.0.0.1 -l jpark'

#Raspberry Pi-USB serial connection
alias pissh='ssh raspberrypi.local -l jpark'

#Check AWS dashboard and add more aliases if needed
#AWS SSH alias
#This ip address changes whenever I turn it off and run it again
# I removed this part, has my AWS key and instance info
# Again, I will be using the same .pem file, but different address for the server
# This will happen everytime I stop and restart a server

#Brew service list
alias bsl='brew services list'
#Whenever using mysql or mariadb, unlink either and do 'brew services start {}'

#LUG Server ssh
alias lugssh='ssh ssh.linux.ucla.edu -l ferris314'
alias lugssh2='ssh linux.ucla.edu -l ferris314'

#python
pycalc() {
    python -c "print $@"
}
alias p=pycalc
alias spark='spark-shell'
alias javac='javac -encoding UTF-8 -g:none -Xlint:deprecation'

alias redis='redis-cli'

#Arp -a
alias aa='arp -a'

alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias grep='grep --color=auto'
alias more='more -R'
alias less='less -R'
alias tree='tree -C'
alias diff='diff -u'

alias ll='ls -lv'
alias lla='ls -al'
alias la='ls -al'
alias du='du -hs'
alias df='df -h'

alias ps='ps -f'
alias pse='ps -ef'
alias psg='ps -ef | grep'

alias v='vim'
alias t='tmux'
alias b='byobu'
alias irc='irssi'

alias h='htop'
alias lsblk='diskutil list'

alias dig='dig +noall +answer' #DNS
alias highlight='pygmentize -g -f termianl 256 -O style=native'

alias ga='git add'
alias gaa='git add --all'
alias gca='git commit -a -m'
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
alias gbc='git branch | grep \* | cut -d ' ' -f2-'
alias gbb='git branch -b'

#####################custom aliases#################################
alias emacs='/usr/local/Cellar/emacs/25.2/bin/emacs-25.2 -nw'
alias mongodbconf='mongod --config /usr/local/etc/mongod.conf'
alias postgres='psql -U postgres'
# alias python='python2'
# octave
# brew info list

insert_sudo () { zle beginning-of-line; zle -U "sudo " }
zle -N insert-sudo insert_sudo
bindkey "^[s" insert-sudo

alias ez='vim ~/.vimrc'
alias vz='vim ~/.zshrc'
alias sz='source ~/.zshrc'

source "/Users/jpark314/.oh-my-zsh/custom/themes/spaceship.zsh-theme"

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
export PATH=/usr/local/share/dotnet:$PATH

export TERM="xterm-256color"
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
export PATH="/usr/locl/sbin:$PATH"
export PATH="/usr/local/sbin:$PATH"
eval "$(chef shell-init zsh)"
