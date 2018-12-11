function hi
    fortune | cowsay -f (cowsay -l | sed "1 d" | tr " " "\n" | shuf -n 1) | lolcat
end
