DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Candidate:
# Do nothing if not in interactive mode
# [[ "$-" != *i* ]] && return

##########




export PATH="~/dev/env/bin:$PATH"
export MOZILLA_FIVE_HOME=/usr/lib/mozilla

export CREWMODULES_INCLUDE_DEBUG_SITE=true
export JAVA_HOME=/usr/lib/jvm/java-openjdk/

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

alias mci="mvn clean install"

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
