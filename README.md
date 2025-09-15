# Open URL in Chrome

This is an AppleScript that's designed to be used with Raycast. It's a quick way to focus a specific window+tab in Chrome. For example, you can use it with https://chatgpt.com if you prefer to access the interface via the browser instead of the native app.

## Setup

```
git clone https://github.com/MaxPower15/open-url-in-chrome.git
cd open-url-in-chrome
RAYCAST_SCRIPTS_DIR="configure-your-scripts-dir-here"
mkdir -p "$RAYCAST_SCRIPTS_DIR/"
cp raycast-scripts/* "$RAYCAST_SCRIPTS_DIR/"
# After that, modify $RAYCAST_SCRIPTS_DIR/open-chat-gpt-in-chrome.sh to point to the correct path to open-url-in-chrome.applescript.
```

