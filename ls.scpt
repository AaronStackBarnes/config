tell application "iTerm2"
    tell current session of current window
        write text "zeplin && cd ~/websites/lil-sugar && yarn start" 
    end tell
    tell current window
        create tab with default profile
    end tell
    tell current tab of current window
        set _new_session to last item of sessions
    end tell
    tell _new_session
        write text "cd ~/websites/lil-sugar && vim" 
    end tell
    tell current window
        create tab with default profile
    end tell
    tell current tab of current window
        set _new_session to last item of sessions
    end tell
    tell _new_session
        write text "cd ~/websites/lil-sugar && figlet 'lil sugar' | lolcat
 && mdcat ~/.note-pad.md " 
    end tell
end tell
