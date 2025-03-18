#GIT ALIASES
alias lg="git log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --branches"
alias gaa="git add --all"
alias gcb="git checkout -b"
alias gbi='git branch | fzf | cut -c 3- | xargs git checkout'
alias gcm="git checkout master"
alias gcl="git checkout -- ."
alias gcmsg="git commit -m"
alias gco="git checkout"
alias glgg="git log --graph"
alias gb="git branch"
alias gst="git status"
alias gp="git push"
alias gl="git pull"
alias glg="git log --stat"
alias ghh="git help"
alias gsv="git stash save"
alias gsp="git stash pop"
alias gstd="git stash drop"
alias gunt="git stash save --include-untracked -m ''"
alias gdiff="git diff HEAD"
alias vdiff="git difftool HEAD"

# System Aliases
alias ls="eza --icons=always --all"
alias ld="eza --icons=always --only-dirs --all"
alias lf="eza --icons=always --only-files --all"
alias l='eza --color=always --icons=always --long --all --git --no-time --no-user' 
alias la='eza --color=always --icons=always --long --all' 
alias lv='eza --color=always --icons=always --long' 
# alias lla='ls -la'
alias ltr='ls --tree'
alias et="eza --tree --level=2 --color=always"
alias o="open -a"
alias cl="clear"
alias nd="npm run dev"
alias ni="npm install"
alias pm="pnpm"
alias st="speedtest"
alias vim="nvim"
alias nv="nvim"
alias pes="pnpm exec eslint"
alias gc="gh copilot"
alias gcsg="gh copilot suggest"
alias gcex="gh copilot explain"
alias ..="cd .."
alias x="exit"
alias codi="code-insiders ."
alias cat="bat"
alias gw="glow"
alias gw="glow"
alias sleep="pmset sleepnow"
alias lama="ollama"
alias irc="irrsi"
alias pathtab="echo $PATH | tr ':' '\n'"
alias bindlist="ifconfig | grep -A 2 utun"


# btop - htop
# ncdu
# tf*ck : tf

# Deepseek
# Reasoning model
alias dsr="ollama run deepseek-r1:32b" 
# Mixture of Experts
alias ds="ollama run deepseek-v2:16b" 
# Coder
# https://ollama.com/library/deepseek-coder:33b
alias dsc="ollama run deepseek-coder:33b" 


# GHOSTTY
alias ghosty="ghostty"
alias gtheme="ghostty +list-themes"

# TLDR
alias tldri='tldr --list | fzf --preview "tldr {1} --color=always" --preview-window=right,70% | xargs tldr'

# Cheat.sh
alias ch="curl cht.sh/"

# Lazy Docker
alias lzd="lazydocker"

# Aliases for common dirs
alias home="cd ~"
alias rp="~/."

#FZF and FD
# restore fzf default options ('fzf clear')
alias fzfcl="export FZF_DEFAULT_COMMAND='fd .'"
# reinstate fzf custom options ('fzf-' as in 'cd -' as in 'back to where I was')
alias fzf-="export FZF_DEFAULT_COMMAND='fd . $HOME'"

# VIM
# alias v="/Users/mattiapicchio/.nix-profile/bin/nvim"

# Nmap
alias nm="nmap -sC -sV -oN nmap"

# Tmux
alias tmux_reload="tmux source-file ~/.config/tmux/tmux.conf"
alias tmn="tmux new -s"

# FVM
alias fvf="fvm flutter"
alias fvd="fvm dart"

# XCODE VERSIONS
alias use-xcode-154='sudo xcode-select --switch /Applications/Xcode.app/Contents/Developer'
alias use-xcode-162='sudo xcode-select --switch /Applications/Xcode16.2.app/Contents/Developer'

# Unlighthouse
alias unl="npx unlighthouse --site "

