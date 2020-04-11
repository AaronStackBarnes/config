tell application "iTerm2"
    tell current window
        create tab with default profile
    end tell
    tell current tab of current window
        set _new_session to last item of sessions
    end tell
    tell _new_session
        write text "ssh -t root@174.138.37.192 'cd socialBullets/; pm2 logs; exec $SHELL'"  
    end tell
    tell current window
        create tab with default profile
    end tell
    tell current tab of current window
        set _new_session to last item of sessions
    end tell
    tell _new_session
        write text "ssh -t root@174.138.37.192 'cd socialBullets/; vim; exec $SHELL'"  
    end tell
    tell current window
        create tab with default profile
    end tell
    tell current tab of current window
        set _new_session to last item of sessions
    end tell
    tell _new_session
        write text "ssh -t root@174.138.37.192 'cd socialBullets/; exec $SHELL'"  
    end tell
end tell
