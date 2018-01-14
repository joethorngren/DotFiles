# Path to your oh-my-zsh installation.
export ZSH=/${HOME}/.oh-my-zsh
export ZSH_HOME=/${HOME}/.zsh

ZSH_THEME="powerlevel9k/powerlevel9k"

# PowerLevel9K {{{

POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_PROMPT_ADD_NEWLINE=true
POWERLEVEL9K_RPROMPT_ON_NEWLINE=true
POWERLEVEL9K_MODE="nerdfont-complete"

POWERLEVEL9K_SHORTEN_DIR_LENGTH=1
POWERLEVEL9K_SHORTEN_STRATEGY="truncate_from_right"
POWERLEVEL9K_SHORTEN_DELIMITER=".."

POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(vi_mode ssh context dir)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(background_jobs vcs time newline)

POWERLEVEL9K_CONTEXT_DEFAULT_BACKGROUND="white"
POWERLEVEL9K_CONTEXT_DEFAULT_FOREGROUND="black"
POWERLEVEL9K_CONTEXT_ROOT_BACKGROUND="red"
POWERLEVEL9K_CONTEXT_ROOT_FOREGROUND="blue"

POWERLEVEL9K_VI_MODE_INSERT_FOREGROUND='226'
POWERLEVEL9K_VI_MODE_INSERT_BACKGROUND='000'

POWERLEVEL9K_VI_MODE_NORMAL_FOREGROUND='190'
POWERLEVEL9K_VI_MODE_NORMAL_BACKGROUND='034'

# Advanced `vcs` color customization
POWERLEVEL9K_VCS_FOREGROUND='blue'
POWERLEVEL9K_VCS_BACKGROUND='green'
# If VCS changes are detected:
POWERLEVEL9K_VCS_MODIFIED_FOREGROUND='black'
POWERLEVEL9K_VCS_MODIFIED_BACKGROUND='red'

# }}} 

plugins=(git zsh-dircolors-solarized fzf-zsh vi-mode zsh-autosuggestions zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh
source "$ZSH_HOME/zsh_aliases"
source "$ZSH_HOME/zsh_options"
source "$ZSH_HOME/history.zsh"

# zsh highlighting {{{
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern cursor)
#ZSH_HIGHLIGHT_STYLES[cursor]='bold'
#
#ZSH_HIGHLIGHT_STYLES[alias]='fg=green,bold'
#ZSH_HIGHLIGHT_STYLES[suffix-alias]='fg=green,bold'
#ZSH_HIGHLIGHT_STYLES[builtin]='fg=green,bold'
#ZSH_HIGHLIGHT_STYLES[function]='fg=green,bold'
#ZSH_HIGHLIGHT_STYLES[command]='fg=green,bold'
#ZSH_HIGHLIGHT_STYLES[precommand]='fg=green,bold'
#ZSH_HIGHLIGHT_STYLES[hashed-command]='fg=green,bold'

# }}}

zstyle ':completion:*' list-colors "${(@s.:.)LS_COLORS}"
zstyle ':completion:*' accept-exact '*(N)'
zstyle ':completion:*' use-cache on
zstyle ':completion:*' cache-path ~/.zsh/cache

eval "`pip completion --zsh`"
compctl -K _pip_completion pip3

bindkey '^ ' autosuggest-accept

# Vim Mode {{{

bindkey -v 

KEYTIMEOUT=1

bindkey -a u undo
bindkey -a '^T' redo
bindkey '^?' backward-delete-char  #backspace

# }}} 
autoload -Uz compinit promptinit 
compinit
promptinit

autoload -U zmv 

[ -s "${HOME}/.scm_breeze/scm_breeze.sh" ] && source "${HOME}/.scm_breeze/scm_breeze.sh"

eval 'keychain --eval --agents ssh tack-lighthouse'

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export SDKMAN_DIR="${HOME}/.sdkman"
[[ -s "${HOME}/.sdkman/bin/sdkman-init.sh" ]] && source "${HOME}/.sdkman/bin/sdkman-init.sh"
