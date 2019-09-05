export ZSH=$HOME/.oh-my-zsh

export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh

ZSH_THEME="powerlevel10k/powerlevel10k"
POWERLEVEL9K_MODE="awesome-patched"

COMPLETION_WAITING_DOTS="true"

plugins=(git web-search zsh-autosuggestions osx)

source $ZSH/oh-my-zsh.sh

alias blender="open -a 'Blender'"
alias cura="open -a 'Ultimaker Cura'"
alias hg="history | grep"
alias co="git checkout"
alias atom="vim"
alias vimstall="cd ~/.vim/bundle && git clone"
alias fuckdsstore="rmdsstore"
alias notes="vim ~/.note-pad.md"
alias findPi="sudo nmap -sP 192.168.1.0/24 | awk '/^Nmap/{ip=$NF}/B8:27:EB/{print ip}'"
alias https="~/.ngrok http"
alias sshdo="ssh-add -K ~/.ssh/do && ssh root@167.99.235.109"
alias chrome="open -a 'Google Chrome'"
alias coms="open -a 'Microsoft Outlook' && open -a 'Microsoft Teams'"
alias myip="ipconfig getifaddr en0"
alias gsu="git stash -u"
alias gsp="git stash pop"
alias android="open -a 'Android Studio'"

source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

[[ -f ~/.p10k.zsh ]] && source ~/.p10k.zsh
