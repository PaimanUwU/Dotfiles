function c --description "Open specific dotfiles quickly"
    if test (count $argv) -eq 0
        echo "Usage: c [tool]"
        echo "Available configs: bat, cava, fastfetch, fish, ghostty, neofetch, nvim, p10k, ssh, starship, tmux, yazi, zed, zsh"
        return 1
    end

    switch $argv[1]
        case bat
            cd ~/Documents/Dotfiles/bat/.config/bat/
            nvim .
        case cava
            cd ~/Documents/Dotfiles/cava/.config/cava/
            nvim .
        case fastfetch
            cd ~/Documents/Dotfiles/fastfetch/.config/fastfetch/
            nvim config.jsonc
        case fish
            cd ~/Documents/Dotfiles/fish/.config/fish/
            nvim config.fish
        case ghostty
            cd ~/Documents/Dotfiles/ghostty/.config/ghostty/
            nvim config
        case neofetch
            cd ~/Documents/Dotfiles/neofetch/.config/neofetch/
            nvim config.conf
        case nvim
            cd ~/Documents/Dotfiles/nvim/.config/nvim/
            nvim init.lua
        case p10k
            cd ~/Documents/Dotfiles/p10k/
            nvim .p10k.zsh
        case ssh
            cd ~/Documents/Dotfiles/ssh/.ssh/
            nvim config
        case starship
            cd ~/Documents/Dotfiles/starship/.config/
            nvim starship.toml
        case tmux
            cd ~/Documents/Dotfiles/tmux/.config/tmux/
            nvim tmux.conf
        case yazi
            cd ~/Documents/Dotfiles/yazi/.config/yazi/
            nvim yazi.toml
        case zed
            cd ~/Documents/Dotfiles/zed/.config/zed/
            nvim settings.json
        case zsh
            cd ~/Documents/Dotfiles/zsh/
            nvim .zshrc
        case '*'
            echo "Unknown configuration profile: $argv[1]"
            echo "Run 'c' without arguments to see available configurations."
            return 1
    end
end
