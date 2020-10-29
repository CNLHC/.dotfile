alias pdf="df -H -x tmpfs -x overlay --output"
alias edit_alias="vim ~/.dotfile/zsh/alias.zsh"
alias source_conf="source ~/.zshrc"
alias edit_zshrc="vim ~/.zshrc"
alias vim=nvim
alias t='tmux new-session -A -s main'

bindkey \"^P\" up-line-or-beginning-search
bindkey \"^N\" down-line-or-beginning-search


function kill_by_grep {
     ps -aux | grep  $1 | tr -s ' '| cut -d ' ' -f2 | xargs kill -9 ;
}
function k8s_delete_evicted {
    kubectl get pods -n $1| grep Evicted | tr -s ' ' | cut -d ' ' -f 1 |xargs kubectl delete pods -n $1
}

