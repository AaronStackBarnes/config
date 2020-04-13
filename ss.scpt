tell application "iTerm2"
     tell current window
        create tab with default profile
    end tell
    tell current tab of current window
        set _new_session to last item of sessions
    end tell
    tell _new_session
        write text "zeplin && cd ~/websites/rackett/app && xcode ~/websites/rackett/app/ios/see-sound.xcworkspace"  
    end tell
     tell current window
        create tab with default profile
    end tell
    tell current tab of current window
        set _new_session to last item of sessions
    end tell
    tell _new_session
        write text "cd ~/websites/rackett/app vim"  
    end tell
end tell
