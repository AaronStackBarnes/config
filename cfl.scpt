tell application "iTerm2"
    tell current session of current window
        write text "cd ~/websites/cfl-server && echo '&& dockerStart && sleep 5 && killallServers && sleep 4 && docker-compose up -d && yarn start'" 
    end tell
    tell current window
        create tab with default profile
    end tell
    tell current tab of current window
        set _new_session to last item of sessions
    end tell
    tell _new_session
        write text "zeplin && cd ~/websites/cfl-application && yarn start" 
    end tell
    tell current window
        create tab with default profile
    end tell
    tell current tab of current window
        set _new_session to last item of sessions
    end tell
    tell _new_session
        write text "cd ~/websites/cfl-application && vim" 
    end tell
    tell current window
        create tab with default profile
    end tell
    tell current tab of current window
        set _new_session to last item of sessions
    end tell
    tell _new_session
        write text "cd ~/websites/cfl-application && mdcat ~/websites/cfl-application/README.md && wamin" 
    end tell
end tell
