. /usr/lib/python3.6/site-packages/powerline/bindings/zsh/powerline.zsh

source $ZPLUG_HOME/init.zsh
source $ZSH_HOME/zsh_aliases

zplug "zsh-users/zsh-history-substring-search"

# Install plugins if there are plugins that have not been installed
if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi

# Then, source plugins and add commands to $PATH
zplug load --verbose
