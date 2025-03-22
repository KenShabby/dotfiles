#
# Brendan's favorite aliases
#
alias quickmap="nmap -vv -T4 -p- -sV --max-retries 5"
alias fman='compgen -c | fzf | xargs man'
alias list_vars='( set -o posix ; set ) | less'
alias du='du -h'
alias c='clear'
alias fzf='fzf --preview="bat --color=always {}"'
#
# NeoVim related
alias fnv='nvim $(fzf -m --preview="bat --color=always {}")'
alias vi='nvim'
alias vim='nvim'
alias nv='nvim'
