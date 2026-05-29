if status is-interactive
    abbr -a gs 'git status'
    abbr -a ga 'git add'
    abbr -a gp 'git push -u'
    abbr -a gl "git log --graph --format=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(bold yellow)%d%C(reset)' --all"

    function gc --description 'Interactive git commit with conventional commits style'
        set -l types feat fix chore docs style refactor test
        set -l type (string join \n $types | fzf --height 15 --layout=reverse --preview-window=hidden --prompt="Select commit type: ")
        
        if test -z "$type"
            echo (set_color red)"Aborted: No type selected."(set_color normal)
            return 1
        end

        echo (set_color magenta)"Enter scope (optional, press Enter to skip):"(set_color normal)
        read -l scope

        echo (set_color green)"Enter commit message:"(set_color normal)
        read -l message
        if test -z "$message"
            echo (set_color red)"Aborted: Message is required."(set_color normal)
            return 1
        end

        if test -n "$scope"
            set commit_msg "$type($scope): $message"
        else
            set commit_msg "$type: $message"
        end

        commandline -r "git commit -m \"$commit_msg\""
        commandline -f repaint
    end
end
