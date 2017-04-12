# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=2000
SAVEHIST=1000
setopt appendhistory autocd extendedglob nomatch notify
unsetopt beep
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/jon/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# highlight selections on completion
zstyle ':completion:*' menu select

# aliases
source $HOME/.aliases

alias ls='ls --color=auto'
alias la='ls -a --color=auto'
alias tree='tree -C'

PS1=$'\e[0;31m%~ \e[0m'

if [ $TERM = "xterm" ]
then
    TERM="xterm-256color"
fi
[[ -z "$TMUX" ]] && tmux

# disable ranger loading the default rc
RANGER_LOAD_DEFAULT_RC=false
