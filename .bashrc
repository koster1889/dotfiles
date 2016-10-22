# Check if running in cygwin
# $(uname -o) = "Cygwin" 

#Alias
alias tree="tree -Ca" # Turn on colors and show hidden files
alias treel"tree -Ca -L" # tree with a depth limit 

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
    mkdir $1
    cd $1
}
