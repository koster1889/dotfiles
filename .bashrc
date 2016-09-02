#Alias
alias tree="tree -Ca" # Turn on colors and show hidden files
alias treel"tree -Ca -L" # tree with a depth limit 

#Helpers
alias hg-ignored-randoms='hg st -i | grep -v target/ | grep -v /overlays/ | sed -e "s/I //g"'

function v() {
    # eg view command output in vim eg. "v hg log"
    echo "Vimifying..."
    "$@" | vim -
}
