function path_rm
    set -U fish_user_paths (string match -v $argv $fish_user_paths)
end
