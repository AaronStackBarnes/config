on run {input, parameters}

  do shell script "open -a 'iTerm 2'"

  delay 5 

 	tell application "iTerm 2"
		tell current window
			create tab with profile "Default"
		end tell
		tell current session of current window
			write text "mdcat ~/.note-pad.md && ~/websites/config/morningReadout.sh"
		end tell
	end tell

  
  delay 5 

  try
    tell application "System Events" to tell process "iTerm 2"
      set value of attribute "AXFullScreen" of window 1 to true
    end tell
  end try


 

  do shell script "open -a 'Slack'"

  do shell script "open -a 'Microsoft Outlook'"

  delay 15 

  try
    tell application "System Events" to tell process "Microsoft Outlook"
      set value of attribute "AXFullScreen" of window 1 to true
    end tell
  end try


  do shell script "open -a 'Microsoft Teams'"
  delay 15 

  try
    tell application "System Events" to tell process "Microsoft Teams"
        set value of attribute "AXFullScreen" of window 1 to true
    end tell
  end try


  do shell script "open -a 'Google Chrome'"

  delay 5 

  tell application "Google Chrome"
       open location "https://open.spotify.com/"
       open location "https://lichess.org/training"
       open location "https://www.ft.com/"
  end tell

  try
   tell application "System Events" to tell process "Google Chrome"
       set value of attribute "AXFullScreen" of window 1 to true
   end tell
  end try

	return input
end run

