-- Switch directly to WeChat Input Method using the bundled helper.
-- This does not rely on Command+Space or Control+Space shortcuts.

set helperPath to POSIX path of ((path to me as text) & "Contents:Resources:select-wetype")
do shell script quoted form of helperPath
