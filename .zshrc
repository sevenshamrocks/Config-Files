
# Created by `pipx` on 2024-07-29 02:18:31
export PATH="$PATH:/Users/austin/.local/bin"

# Change prompt to geometry.
source $HOMEBREW_PREFIX/opt/geometry/share/geometry/geometry.zsh

#ZPLUG calls
export ZPLUG_HOME=/usr/local/opt/zplug
source $ZPLUG_HOME/init.zsh

# Install plugin for syntax highlighting
zplug "zdharma/fast-syntax-highlighting", as:plugin, defer:2

zplug load # Install plugins if there are plugins that have not been installed
if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi
