function fish_right_prompt
    set -l cmd_status $status
    if test $cmd_status -ne 0
        echo -n (set_color red)"✘ $cmd_status"
    end

    if not command -sq git
        set_color normal
        return
    end

    # Get the git directory for later use.
    # Return if not inside a Git repository work tree.
    if not set -l git_dir (command git rev-parse --git-dir 2>/dev/null)
        set_color normal
        return
    end

    # Get the current action ("merge", "rebase", etc.)
    # and if there's one get the current commit hash too.
    set -l commit ''
    if set -l action (fish_print_git_action "$git_dir")
        set commit (command git rev-parse HEAD 2> /dev/null | string sub -l 7)
    end

    # Get either the branch name or a branch descriptor.
    set -l branch_detached 0
    if not set -l branch (command git symbolic-ref --short HEAD 2>/dev/null)
        set branch_detached 1
        set branch (command git describe --contains --all HEAD 2>/dev/null)
    end

    set -l stat (command git status --porcelain | string sub -l2  2>/dev/null)

    if test -n "$branch"
        if test $branch_detached -ne 0
            set_color brmagenta
        else if test -n "$stat"
            set_color yellow
        else
            set_color green
        end
        echo -n "  $branch"
    end

    if test -n "$commit"
        echo -n ' '(set_color yellow)"$commit"
    end

    if test -n "$action"
        set_color normal
        echo -n (set_color white)':'(set_color brred)"$action"
    end

    echo -n " "

    set_color normal
end
