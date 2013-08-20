ZSH=$HOME/.oh-my-zsh
ZSH_THEME="afowler"
plugins=(git)
plugins=(python)

# simple aliases
alias tmux="TERM=screen-256color-bce tmux"
alias mkdir="mkdir -pv"
alias svi="sudo vi"
alias ls="ls -l"
alias df="df -hT"
alias ps="ps u"
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."


# default apps
(( ${+BROWSER} )) || export BROWSER="w3m"
(( ${+PAGER} ))   || export PAGER="less"

DISABLE_LS_COLORS="true"

source $ZSH/oh-my-zsh.sh
unsetopt correct_all
autoload -U colors && colors
autoload -U edit-command-line
zle -N edit-command-line
bindkey '\C-x\C-e' edit-command-line
bindkey -v
set -o vi

export MARKPATH=$HOME/.marks
function jump {
    cd -P $MARKPATH/$1 2>/dev/null || echo "No such mark: $1"
}
function mark {
    mkdir -p $MARKPATH; ln -s $(pwd) $MARKPATH/$1
}
function unmark {
    rm -i $MARKPATH/$1
}
function marks {
    ls -l $MARKPATH | sed 's/  / /g' | cut -d' ' -f9- | sed 's/ -/\t-/g' && echo
}
