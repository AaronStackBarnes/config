on run {input, parameters}

  do shell script "open -a 'Google Chrome'"

  delay 2 

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

