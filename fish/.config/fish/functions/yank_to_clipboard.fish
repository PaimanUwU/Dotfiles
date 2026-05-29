function yank_to_clipboard -d "Sync the latest Fish killring entry with the system clipboard"
    if set -q fish_killring[1]
        # Adding > /dev/null 2>&1 guarantees absolute silence in the terminal
        printf "%s" "$fish_killring[1]" | fish_clipboard_copy > /dev/null 2>&1
    end
end
