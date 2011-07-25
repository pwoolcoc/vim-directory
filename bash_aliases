alias rm='rm -i'
alias hdrive='cd /mnt/hdrive'

alias ga='git add'
alias gp='git push'
alias gl='git log'
alias gs='git status'
alias gd='git diff'
alias gdc='git diff --cached'
alias gm='git commit -m'
alias gma='git commit -am'
alias gb='git branch'
alias gc='git checkout'
alias gra='git remote add'
alias grr='git remote rm'
alias gpu='git pull'
alias gcl='git clone'
alias gmr='git merge'

alias svi='sudo vi'

complete -o default -o nospace -F _git_log gl
complete -o default -o nospace -F _git_push gp
complete -o default -o nospace -F _git_diff gd
complete -o default -o nospace -F _git_branch gb
complete -o default -o nospace -F _git_checkout gc


if [ -f ~/.bash_aliases.local ]; then
  . ~/.bash_aliases.local
fi

