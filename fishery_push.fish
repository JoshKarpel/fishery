function fishery_push
	cd ~/.config/fish/functions
    git add .
    git commit -m (echo $argv)
    git push
    prevd
end
