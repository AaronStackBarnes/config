export ZSH=$HOME/.oh-my-zsh

export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh

ZSH_THEME="powerlevel10k/powerlevel10k"
POWERLEVEL9K_MODE="awesome-patched"

COMPLETION_WAITING_DOTS="true"

plugins=(git web-search zsh-autosuggestions osx)

source $ZSH/oh-my-zsh.sh

alias zeplin="open -a 'Zeplin'"
alias blender="open -a 'Blender'"
alias cura="open -a 'Ultimaker Cura'"
alias hg="history | grep"
alias co="git checkout"
alias fuckdsstore="rmdsstore"
alias notes="vim ~/.note-pad.md"
alias https="~/.ngrok http"
alias sshracket="ssh-add -K ~/.ssh/do && ssh astack@54.174.19.177"
alias sshdo="ssh-add -K ~/.ssh/do && ssh root@167.99.235.109"
alias sshs="ssh-add -K ~/.ssh/do && ssh root@167.99.235.109"
alias sshb="ssh-add -K ~/.ssh/do && ssh root@174.138.37.192"
alias chrome="open -a 'Google Chrome'"
alias coms="open -a 'Microsoft Outlook' && open -a 'Microsoft Teams'"
alias myip="ipconfig getifaddr en0"
alias gsu="git stash -u"
alias gsp="git stash pop"
alias gsc="git stash clear"
alias cdwb="cd ~/websites/"
alias xcode="open -a 'Xcode'"
alias android="open -a 'Android Studio'"
alias maker="open -a 'MakerBot Print'"
alias dockerStart="open -a 'Docker'"
alias postman="open -a 'Postman'"
alias mongoHub="open -a 'MongoHub'"

killallServers(){
 docker stop $(docker ps -a -q) &
 sleep 1
 docker rm $(docker ps -a -q) &
 sleep 2
 docker-compose down &
 killall node
}

ds() {
    if [[ "$2" == "c" ]]; then
      cat ~/.note-pad.md && sleep 3 && coms    
    fi
    
    cd osascript /websites/config/ws.scpt 
}

source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

export PATH="/Users/aaron.stack/miniconda3/bin:$PATH"
export ANDROID_HOME=/Users/$USER/Library/Android/sdk
export ANDROID_SDK_HOME=/Users/$USER/Library/Android/sdk
export ANDROID_AVD_HOME=/Users/$USER/.android/avd
export PATH=${PATH}:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools:$ANDROID_AVD_HOME

[[ -f ~/.p10k.zsh ]] && source ~/.p10k.zsh
