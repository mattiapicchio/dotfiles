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
alias gbcur="git branch --show-current"

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
alias x="exit"
alias cod="code-insiders ."
alias cat="bat"
alias gw="glow"
alias sleep="pmset sleepnow"
alias lama="ollama"
alias irc="irrsi"
alias pathtab="echo $PATH | tr ':' '\n'"
alias bindlist="ifconfig | grep -A 2 utun"
alias k3000="lsof -ti :3000 | xargs kill"

# btop - htop
# ncdu
# tf*ck : tf
# https://github.com/yt-dlp/yt-dlp
# hyperfine https://github.com/sharkdp/hyperfine

# GHOSTTY
alias ghosty="ghostty"
alias gtheme="ghostty +list-themes"

# TLDR
alias tldri='tldr --list | fzf --preview "tldr {1} --color=always" --preview-window=right,70% | xargs tldr'

# Cheat.sh
alias ch="curl cht.sh/"

# Lazy Docker
alias lzd="lazydocker"
# Lazy Git
alias lzg="lazygit"
# Lazy Worktree
alias lzw="lazyworktree"

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
alias tmux_restart="tmux kill-server && tmux || tmux"
alias tmn="tmux new -s"

# Unlighthouse
alias unl="npx unlighthouse --site "

# Aliases for common dirs
alias home="cd ~"
alias rp="~/."
# cd aliases 
alias .="pwd"
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."

# Zellij
alias zj="zellij"
alias zjw="zellij --layout ws"

# Claude
alias cld="claude"
alias cldc="claude --continue"
alias cldyolo="claude --dangerously-skip-permissions"

#Ollama
alias gemma="brew services start ollama && ollama run gemma4:31b-it-q4_K_M"
