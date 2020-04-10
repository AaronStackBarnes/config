tell application "iTerm2"
    tell current window
        create tab with default profile
    end tell
    tell current tab of current window
        set _new_session to last item of sessions
    end tell
    tell _new_session
        write text "postman && cd ~/websites/opicipone/neuro-opicapone-na-hcp-email-epsilon && yarn devStart" 
    end tell
    tell current window
        create tab with default profile
    end tell
    tell current tab of current window
        set _new_session to last item of sessions
    end tell
    tell _new_session
        write text "cd ~/websites/opicipone/neuro-opicapone-na-hcp-email-epsilon && vim" 
    end tell
end tell
