tell application "iTerm2"
    tell current window
        create tab with default profile
    end tell
    tell current tab of current window
        set _new_session to last item of sessions
    end tell
    tell _new_session
        write text "postman && cd ~/websites/opicipone/neuro-opicapone-na-hcp-email-epsilon && dockerStart && sleep 10 && docker-compose -f docker-compose.yml -f docker-compose.dev.yml up" 
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
