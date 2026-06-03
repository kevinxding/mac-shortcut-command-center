-- Example: simulate Command + Space.
-- Change key code and modifier list to trigger another shortcut.
-- macOS may ask you to enable Accessibility permission for the runner app.

tell application "System Events"
  key code 49 using {command down}
end tell
