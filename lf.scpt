tell application "iTerm2"
    tell current session of current window
        write text "unity && cd ~/websites/LookingForwardARFilter/Assets/Scripts/ && vim" 
    end tell
    tell current window
        create tab with default profile
    end tell
    tell current tab of current window
        set _new_session to last item of sessions
    end tell
    tell _new_session
        write text "cd ~/websites/LookingForwardARFilter && xed build/Unity-iPhone.xcodeproj && mdcat ~/websites/LookingForwardARFilter/README.md && wamin" 
    end tell
end tell
