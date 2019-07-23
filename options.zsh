cdpath=($HOME/dev/python $HOME/documents $HOME/dev/godev $HOME)

HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000

setopt autocd extendedglob nomatch
setopt appendhistory

setopt correctall
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_REDUCE_BLANKS
setopt HIST_IGNORE_SPACE
setopt COMPLETE_ALIASES
setopt INC_APPEND_HISTORY # May be trash it?
