#
# Brendan's favorite aliases
#
alias ..="cd .."
alias bat='batcat'
if [[ $OSTYPE == "darwin"* ]]; then
  unalias bat
fi
alias c='clear'
alias du='du -h'
alias fman='compgen -c | fzf | xargs man'
alias fzf='fzf -m --preview="bat --color=always {}"'
alias ka='killall'
alias list_vars='( set -o posix ; set ) | less'
alias quickmap="nmap -vv -T4 -p- -sV --max-retries 5"
alias rg="rg --color=always"
#
# NeoVim related
alias fnv='nvim $(fzf -m --preview="bat --color=always {}")'
alias nv='nvim'
alias vi='nvim'
alias vim='nvim'
#
# git related
alias gcm="git commit -m"
