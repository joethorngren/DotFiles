# Path to your oh-my-zsh installation.
export ZSH=/${HOME}/.oh-my-zsh
export ZSH_HOME=/${HOME}/.zsh

ZSH_THEME="powerlevel9k/powerlevel9k"
POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_PROMPT_ADD_NEWLINE=true
POWERLEVEL9K_MODE="nerdfont-complete"

POWERLEVEL9K_SHORTEN_DIR_LENGTH=1
POWERLEVEL9K_SHORTEN_STRATEGY="truncate_from_right"
POWERLEVEL9K_SHORTEN_DELIMITER=".."

POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(ssh context dir)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(background_jobs vcs time)

POWERLEVEL9K_CONTEXT_DEFAULT_BACKGROUND="white"
POWERLEVEL9K_CONTEXT_DEFAULT_FOREGROUND="black"
POWERLEVEL9K_CONTEXT_ROOT_BACKGROUND="red"
POWERLEVEL9K_CONTEXT_ROOT_FOREGROUND="blue"

# Advanced `vcs` color customization
POWERLEVEL9K_VCS_FOREGROUND='blue'
POWERLEVEL9K_VCS_BACKGROUND='green'
# If VCS changes are detected:
POWERLEVEL9K_VCS_MODIFIED_FOREGROUND='black'
POWERLEVEL9K_VCS_MODIFIED_BACKGROUND='red'


plugins=(git zsh-dircolors-solarized zsh-autosuggestions httpie taskwarrior fzf-zsh)

source $ZSH/oh-my-zsh.sh

zstyle ':completion:*' list-colors "${(@s.:.)LS_COLORS}"
zstyle ':completion:*' accept-exact '*(N)'
zstyle ':completion:*' use-cache on
zstyle ':completion:*' cache-path ~/.zsh/cache

eval "`pip completion --zsh`"
compctl -K _pip_completion pip3

bindkey '^ ' autosuggest-accept

autoload -Uz compinit promptinit
compinit
promptinit

[ -s "${HOME}/.scm_breeze/scm_breeze.sh" ] && source "${HOME}/.scm_breeze/scm_breeze.sh"

source "$ZSH_HOME/zsh_aliases"
source "$ZSH_HOME/zsh_options"
source "$ZSH_HOME/history.zsh"

eval 'keychain --eval --agents ssh id_rsa'

export SDKMAN_DIR="${HOME}/.sdkman"
[[ -s "${HOME}/.sdkman/bin/sdkman-init.sh" ]] && source "${HOME}/.sdkman/bin/sdkman-init.sh"
