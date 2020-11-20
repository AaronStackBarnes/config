export ZSH=$HOME/.oh-my-zsh

export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh

ZSH_THEME="powerlevel10k/powerlevel10k"
POWERLEVEL9K_MODE="awesome-patched"

COMPLETION_WAITING_DOTS="true"

plugins=(git web-search zsh-autosuggestions osx)

source $ZSH/oh-my-zsh.sh

alias hg="history | grep"
alias coms="open -a 'Slack' && open -a 'Microsoft Outlook' && open -a 'Microsoft Teams'"
alias fuckdsstore="rmdsstore"
alias notes="vim ~/.note-pad.md"
alias configE="cd ~/websites/config && vim"

alias gitKey="ssh-add -K ~/.ssh/id_rsa"
alias sshKey="ssh-add -K ~/.ssh/do"
alias sshracket="sshKey && ssh astack@54.174.19.177"
alias sshdo="sshKey && ssh root@167.99.235.109"
alias sshs=" sshKey && ssh root@167.99.235.109"
alias sshb="sshKey && ssh root@174.138.37.192"
alias myip="ipconfig getifaddr en0"

alias gCount="git ls-files | while read f; do git blame --line-porcelain $f | grep '^author '; done | sort -f | uniq -ic | sort -n"
alias co="git checkout"
alias gsu="git stash -u"
alias gsp="git stash pop"
alias gsc="git stash clear"

alias https="~/.ngrok http"

alias expoClear="xcrun simctl erase all"
alias chrome="open -a 'Google Chrome'"
alias xcode="open -a 'Xcode'"
alias android="open -a 'Android Studio'"
alias maker="open -a 'MakerBot Print'"
alias dockerStart="open -a 'Docker'"
alias postman="open -a 'Postman'"
alias mongoHub="open -a 'MongoHub'"
alias zeplin="open -a 'Zeplin'"
alias blender="open -a 'Blender'"
alias cura="open -a 'Ultimaker Cura'"
alias unity="open -a 'Unity Hub'"

wamin(){
  printf '%q\n' ${PWD##*/} | figlet | lolcat
}

timeISaved(){
  figlet "Time Saved" | lolcat
   
  echo "minutes: $(($1 * 261 ))"
  echo "hours: $(($1 * 261 / 60))"
  echo "work days: $(($1 * 261 / 60 / 8))"
}

killallServers(){
 docker stop $(docker ps -a -q) &
 sleep 1
 docker rm $(docker ps -a -q) &
 sleep 2
 docker-compose down &
 killall node
}

sbDBDump(){
  ssh-add -K ~/.ssh/do && ssh -t root@174.138.37.192 'mongoexport  --db=bullets --collection=posts --type csv --fields text,type,platform --out ~/dbDump.csv'
  sleep 5
  scp root@174.138.37.192:~/dbDump.csv ~/websites/socialBullets/dbDump.csv
  sleep 15 
  ssh -t root@174.138.37.192 'rm ~/dbDump.csv'
}

ds() {
    if [[ "$2" == "c" ]]; then
      coms && google     
    fi
    
    sshKey && osascript ~/websites/config/$1.scpt 
}

timeSheets() {
  command="osascript ~/websites/config/${1}TimeSheets.scpt" 
  eval "$command"
}

source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

export PATH="/Users/aaron.stack/miniconda3/bin:$PATH"
export ANDROID_HOME=/Users/$USER/Library/Android/sdk
export ANDROID_SDK_HOME=/Users/$USER/Library/Android/sdk
export ANDROID_AVD_HOME=/Users/$USER/.android/avd
export PATH=${PATH}:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools:$ANDROID_AVD_HOME

[[ -f ~/.p10k.zsh ]] && source ~/.p10k.zsh
