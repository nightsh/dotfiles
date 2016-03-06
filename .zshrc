# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="amuse"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Uncomment this to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often to auto-update? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment following line if you want to the command execution time stamp shown 
# in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git composer debian extract gnu-utils sudo themes colorize common-aliases dirhistory git-flow rails dircycle git-extras node colored-man-pages git-flow-completion zsh-navigation-tools)
# Removed: bower npm 

source $ZSH/oh-my-zsh.sh

# User configuration

export PATH=$HOME/bin:/usr/local/bin:$PATH
# export MANPATH="/usr/local/man:$MANPATH"

# # Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"
function gi() { curl http://www.gitignore.io/api/$@ ;}

alias betty="~/build/betty/main.rb"
alias dpaste="curl -F 'content=<-' https://dpaste.de/api/"
alias redshit="redshift -r -l 44.43:26.09  -t 5500:3700"
alias xmlvalue='grep -oPm1 "(?<=<SPhone>)[^<]+"'
export PATH="$HOME/.rbenv/bin:$HOME/.local/bin:$PATH"
eval "$(rbenv init -)"
export LESS='-R'
export LESSOPEN='|/usr/bin/cless %s | less'

function memawk () {
    ps aux | grep $1 | grep -v grep | awk '{print $4;}' | awk '{s+=$1} END {print "Memory: " s "%"}'
}

alias wtf='dmesg'
alias rtfm='man'

alias nvim='TERM=xterm-256color nvim'
alias ytdl='youtube-dl -i -x --audio-format mp3'

alias mimereport="find . -type f -exec file -b {} \; -printf '%s\n' | awk -F , 'NR%2 {i=\$1} NR%2==0 {a[i]+=\$1} END {for (i in a) printf (\"%12u %s\n\",a[i],i)}' | sort -nr"

source ~/.nvm/nvm.sh
nvm use 5.3.0

export CHROMIUM_USER_FLAGS="--enable-plugins --enable-extensions --enable-user-scripts --enable-printing --enable-sync --auto-ssl-client-auth --ppapi-flash-path=/usr/lib64/chromium-browser/pepper/libpepflashplayer.so"


export LC_TYPE="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"

zstyle ':completion:*' rehash true


[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

eval $(thefuck --alias)

source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
