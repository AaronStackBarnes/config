tell application "iTerm2"
    tell current session of current window
        write text "cd ~/websites/scamstopper/app/ && yarn start"  
    end tell
    tell current window
        create tab with default profile
    end tell
    tell current tab of current window
        set _new_session to last item of sessions
    end tell
    tell _new_session
        write text "zeplin && cd ~/websites/scamstopper/app/ && vim"   
    end tell
    tell current window
        create tab with default profile
    end tell
    tell current tab of current window
        set _new_session to last item of sessions
    end tell
    tell _new_session
        write text "cd ~/websites/scamstopper/app/ && mdcat ~/websites/scamstopper/app/README.md && wamin"  
    end tell
end tell
