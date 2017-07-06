# Path to your oh-my-zsh installation.
export ZSH=/home/dayfun/.oh-my-zsh

ZSH_THEME="powerlevel9k/powerlevel9k"
POWERLEVEL9K_PROMPT_ADD_NEWLINE=true
POWERLEVEL9K_MODE='awesome-fontconfig'

plugins=(git zsh-dircolors-solarized)

source $ZSH/oh-my-zsh.sh

zstyle ':completion:*' list-colors "${(@s.:.)LS_COLORS}"

autoload -Uz compinit promptinit
compinit
promptinit

#. /usr/lib/python3.6/site-packages/powerline/bindings/zsh/powerline.zsh

[ -s "/home/dayfun/.scm_breeze/scm_breeze.sh" ] && source "/home/dayfun/.scm_breeze/scm_breeze.sh"

source "$ZSH_HOME/zsh_aliases"
source "$ZSH_HOME/zsh_options"
source "$ZSH_HOME/history.zsh"


#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/home/dayfun/.sdkman"
[[ -s "/home/dayfun/.sdkman/bin/sdkman-init.sh" ]] && source "/home/dayfun/.sdkman/bin/sdkman-init.sh"
