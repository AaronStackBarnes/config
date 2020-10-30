tell application "iTerm2"
    tell current session of current window
        write text "ssh -t root@167.99.235.109 'pm2 start timeSheets; exec $SHELL'" 
    end tell
end tell
