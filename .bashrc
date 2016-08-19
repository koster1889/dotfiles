alias tree="tree -Ca" # Turn on colors and show hidden files
alias treel"tree -Ca -L" # tree with a depth limit 

alias hg-ignored-randoms='hg st -i | grep -v target/ | grep -v /overlays/ | sed -e "s/I //g"'
