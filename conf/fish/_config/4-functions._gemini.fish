function gemini-side
    # Set Node version
    nvm use 20

    # Resize the current window/panel width
    kitty @ action reset_window_sizes
    kitty @ resize-window --increment -30 --axis horizontal

    # Run your CLI tool
    gemini
end
