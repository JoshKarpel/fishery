function path_rm
    set -U fish_user_paths (string match -v $argv[1] $fish_user_paths)
end
