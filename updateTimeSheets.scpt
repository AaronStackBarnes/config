tell application "iTerm2"
    tell current session of current window
        write text "scp ~/.timeSheets/schedule.json root@167.99.235.109:~/.timeSheets/schedule.json && sleep 1 && ssh -t root@167.99.235.109 'pm2 restart timeSheets; exec $SHELL'" 
    end tell
end tell
