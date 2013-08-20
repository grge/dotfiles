ZSH=$HOME/.oh-my-zsh
ZSH_THEME="afowler"
DISABLE_LS_COLORS="true"
alias tmux="TERM=screen-256color-bce tmux"

plugins=(git)
plugins=(python)

source $ZSH/oh-my-zsh.sh
unsetopt correct_all
autoload -U colors && colors
autoload -U edit-command-line
zle -N edit-command-line
bindkey '\C-x\C-e' edit-command-line
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
