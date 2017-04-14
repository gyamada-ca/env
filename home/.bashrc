alias ll='ls -l'
alias term='open -a /Applications/iTerm.app'
alias code='open -a /Applications/Visual\ Studio\ Code.app'

propen() {
    local current_branch_name=$(git symbolic-ref --short HEAD | xargs perl -MURI::Escape -e 'print uri_escape($ARGV[0]);')
    git config --get remote.origin.url | sed -e "s/^.*[:\/]\(.*\/.*\).git$/https:\/\/github.com\/\1\//" | sed -e "s/$/pull\/${current_branch_name}/" | xargs open
}

source ~/.local/bin/bashmarks.sh
