#!/bin/bash

# 1. Get the list of all windows from all workspaces in JSON format.
# 2. Use jq to parse the JSON and format each entry as "window_id: app_name - window_title".
# 3. Pipe the output to fzf for interactive fuzzy search.
# 4. Extract the window ID of the selected line.
# 5. Use the aerospace CLI to focus the selected window.
launcher_window_id=$(
  aerospace list-windows --focused --json |
    jq -r '.[0]["window-id"]'
)
window_list=$(aerospace list-windows --all --json)

selected_window_id=$(echo "$window_list" |
  jq -r '.[] | "\(.["window-id"]) | \(.["app-name"]) | \(.["window-title"])"' |
  fzf --no-sort --bind='enter:become(echo {})' |
  cut -d '|' -f1)

if [ -n "$selected_window_id" ]; then
  aerospace minimize --window-id "$launcher_window_id"

  integer_value=$((selected_window_id + 0))
  aerospace focus --window-id "$integer_value"
  sleep 1
  exit 0
fi
