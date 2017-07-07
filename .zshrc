# Path to your oh-my-zsh installation.
export ZSH=/${HOME}/.oh-my-zsh

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

[ -s "${HOME}/.scm_breeze/scm_breeze.sh" ] && source "${HOME}/.scm_breeze/scm_breeze.sh"

source "$ZSH_HOME/zsh_aliases"
source "$ZSH_HOME/zsh_options"
source "$ZSH_HOME/history.zsh"


#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="${HOME}/.sdkman"
[[ -s "${HOME}/.sdkman/bin/sdkman-init.sh" ]] && source "${HOME}.sdkman/bin/sdkman-init.sh"
