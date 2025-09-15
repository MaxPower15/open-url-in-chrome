on run argv
    set target_url to item 1 of argv
    tell application "Google Chrome"
        set urlFound to false
        repeat with w in windows
            set tabIndex to 0
            repeat with t in tabs of w
                set tabIndex to tabIndex + 1
                if URL of t starts with target_url then
                    set active tab index of w to tabIndex
                    set index of w to 1
                    set urlFound to true
                    exit repeat
                end if
            end repeat
            if urlFound then exit repeat
        end repeat
        if not urlFound then
            tell window 1 to make new tab with properties {URL:target_url}
        end if
        activate
    end tell
    tell application "System Events" to tell process "Google Chrome"
        perform action "AXRaise" of window 1
        set frontmost to true
    end tell
end run
