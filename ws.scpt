tell application "iTerm2"
     tell current window
        create tab with default profile
    end tell
    tell current tab of current window
        set _new_session to last item of sessions
    end tell
    tell _new_session
        write text "google http://167.99.235.109/portal/ &&  zeplin && cd ~/websites/stamps/stampsApp/ && yarn start"  
    end tell
    tell current window
        create tab with default profile
    end tell
    tell current tab of current window
        set _new_session to last item of sessions
    end tell
    tell _new_session
        write text "cd ~/websites/stamps/stampsApp/ && vim"  
    end tell
    tell current window
        create tab with default profile
    end tell
    tell current tab of current window
        set _new_session to last item of sessions
    end tell
    tell _new_session
        write text "ssh-add -K ~/.ssh/do && sh -t root@167.99.235.109 'cd stampsServer/; pm2 logs; exec $SHELL'"  
    end tell
    tell current window
        create tab with default profile
    end tell
    tell current tab of current window
        set _new_session to last item of sessions
    end tell
    tell _new_session
        write text "ssh -t root@167.99.235.109 'cd stampsServer/; vim; exec $SHELL'"  
    end tell
    tell current window
        create tab with default profile
    end tell
    tell current tab of current window
        set _new_session to last item of sessions
    end tell
    tell _new_session
        write text "ssh -t root@167.99.235.109 'cd stampsServer/; exec $SHELL'"  
    end tell
end tell
