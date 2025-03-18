eval "$(/opt/homebrew/bin/brew shellenv)"

# Set up fzf key bindings and fuzzy completion
eval "$(fzf --zsh)"
# combo fzf - ripgrep
export FZF_DEFAULT_COMMAND='rg --files --no-ignore-vcs --hidden'

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH

export PATH="$HOME/.local/bin:$PATH"
export PATH="/opt/homebrew/bin:$PATH"

# Java
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk-17.0.2.jdk/Contents/Home
# export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk-23.jdk/Contents/Home
export PATH=$JAVA_HOME/bin:$PATH

# Rbenv
# Added by `rbenv init` on Thu Feb 13 13:11:02 CET 2025
eval "$(rbenv init - --no-rehash zsh)"

# Ruby
# export PATH="/opt/homebrew/opt/ruby/bin:/opt/homebrew/lib/ruby/gems/3.4.0/bin:$PATH"

# Flutter
# export PATH="$PATH:$HOME/Flutter-sdk/flutter/bin"
export PATH="$PATH:$HOME/fvm/default/bin"
#  export PATH="$HOME/.fvm/versions/flutter-3.16.0/bin:$PATH"

# PUB
export PATH="$PATH":"$HOME/.pub-cache/bin"

# Android Studiwo
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/tools:$ANDROID_HOME/tools/bin:$ANDROID_HOME/platform-tools

# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# place this after nvm initialization!
autoload -U add-zsh-hook

load-nvmrc() {
  local nvmrc_path
  nvmrc_path="$(nvm_find_nvmrc)"

  if [ -n "$nvmrc_path" ]; then
    local nvmrc_node_version
    nvmrc_node_version=$(nvm version "$(cat "${nvmrc_path}")")

    if [ "$nvmrc_node_version" = "N/A" ]; then
      nvm install
    elif [ "$nvmrc_node_version" != "$(nvm version)" ]; then
      nvm use
    fi
  elif [ -n "$(PWD=$OLDPWD nvm_find_nvmrc)" ] && [ "$(nvm version)" != "$(nvm version default)" ]; then
    echo "Reverting to nvm default version"
    nvm use default
  fi
}

add-zsh-hook chpwd load-nvmrc
load-nvmrc
# End NVM

## Setting PATH for Python 3.10
## The original version is saved in .zprofile.pysave
# PATH="/Library/Frameworks/Python.framework/Versions/3.10/bin:${PATH}"
# export PATH

##### pyenv #####
# eval "$(pyenv init --path)"
##
# Your previous /Users/mattiapicchio/.zprofile file was backed up as /Users/mattiapicchio/.zprofile.macports-saved_2023-06-20_at_23:01:46
##

# MacPorts Installer addition on 2023-06-20_at_23:01:46: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.

export PATH="$PATH:/usr/local/mysql/bin"
export PATH=/opt/homebrew/bin:$PATH

# Added by Toolbox App
export PATH="$PATH:/Users/mattiapicchio/Library/Application Support/JetBrains/Toolbox/scripts"

# export PATH="/opt/homebrew/opt/libpq/bin:$PATH"
export PATH="$PATH:/usr/local/share/dotnet"
export PATH="/usr/local/bin:$PATH"
export NODE_OPTIONS=--max-old-space-size=4096



