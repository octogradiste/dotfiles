# Set up starship prompt
starship init fish | source

# Disables fish welcome message
set -g fish_greeting

# Append rust to the path
fish_add_path $HOME/.cargo/bin
