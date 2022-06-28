DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Candidate:
# Do nothing if not in interactive mode
# [[ "$-" != *i* ]] && return

##########

export NAMESPACE=purplehaze-crewaccess-pipelines
export KUBECONFIG=~/.kube/$NAMESPACE.kubeconfig.yaml


nvm use 14 --silent

alias gs="git status"
alias gd="git diff"
alias gc="git commit"
alias gp="git pull"
alias gf="git fetch"
alias gb="git branch"
alias g="git"
alias k=kubectl
alias vnc="vncviewer -PreferredEncoding=ZRLE"
export PATH="~/dev/env/scripturu/:~/dev/env/bin:$PATH"
export MOZILLA_FIVE_HOME=/usr/lib/mozilla

alias d="docker"


export CREWMODULES_INCLUDE_DEBUG_SITE=true
#export JAVA_HOME=/usr/lib/jvm/java-openjdk/
#export JAVA_HOME=/usr/lib/jvm/java-11-openjdk-11.0.14.1.1-5.fc35.x86_64/
export JAVA_HOME=/usr/lib/jvm/java-11-openjdk-11.0.15.0.10-1.fc36.x86_64/
#export JAVA_HOME=/usr/lib/jvm/java-1.8.0-openjdk
export PATH=$PATH:$JAVA_HOME/bin


#Config
export EDITOR=vim
source ${DIR}/colors.sh 
export PS1=$BGreen"\u"$NC"@"$Yellow"\h"$Cyan" \w"$NC"\n$ "

#Alias
alias aliasedit="vim ${DIR}/.bashrc"
alias rela="source ~/.bashrc"
alias ls='ls -l --color=auto'
alias grep="grep --color"

alias tree="tree -Ca" # Turn on colors and show hidden files
alias treel="tree -Ca -L" # tree with a depth limit 

alias mci=". ~/.pyenv/versions/pyvenv38/bin/activate; mvn clean install"

#Helpers
alias hg-ignored-randoms='hg st -i | grep -v target/ | grep -v /overlays/ | sed -e "s/I //g"'

function hg-all() {
    # Do some hg action on all repos in a folder
    /bin/ls -1 | xargs -L1 -I repo sh -c "echo repo: && hg $1 -R repo"
}
alias allin="hg-all in"

function v() {
    # eg view command output in vim eg. "v hg log"
    echo "Vimifying..."
    "$@" | vim -
}

function mkcd() {
    mkdir -p $1
    cd $1
}

CARM_DATEFORMAT='+%Y-%m-%d %H:%M'

function human2absdate  { echo $(( ($(date --utc -d "$1" +%s)-504921600)/60/60/24 )) ; }
function human2abstime  { echo $(( ($(date --utc -d "$1" +%s)-504921600)/60 )) ; }

function abstime2human  { date --utc -d @$(echo $(( ($1*60)+504921600)) ) "$CARM_DATEFORMAT"; }
function absdate2human  { date --utc -d @$(echo $(( ($1*60*60*24)+504921600)) ) "$CARM_DATEFORMAT"; }
