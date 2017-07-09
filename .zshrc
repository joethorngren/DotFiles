# Path to your oh-my-zsh installation.
export ZSH=/${HOME}/.oh-my-zsh

ZSH_THEME="powerlevel9k/powerlevel9k"
POWERLEVEL9K_PROMPT_ADD_NEWLINE=true
POWERLEVEL9K_MODE='nerdfont-complete'

POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(ssh context dir)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(background_jobs vcs time)

POWERLEVEL9K_CONTEXT_DEFAULT_BACKGROUND="white"
POWERLEVEL9K_CONTEXT_DEFAULT_FOREGROUND="black"
POWERLEVEL9K_CONTEXT_ROOT_BACKGROUND="red"
POWERLEVEL9K_CONTEXT_ROOT_FOREGROUND="blue"

# Advanced `vcs` color customization
POWERLEVEL9K_VCS_FOREGROUND='blue'
POWERLEVEL9K_VCS_DARK_FOREGROUND='black'
POWERLEVEL9K_VCS_BACKGROUND='green'
# If VCS changes are detected:
POWERLEVEL9K_VCS_MODIFIED_FOREGROUND='red'
POWERLEVEL9K_VCS_MODIFIED_BACKGROUND='cyan'


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
