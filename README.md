# fishery
My fish shell functions

## Fish Setup

### Install Fish

```
sudo apt-add-repository ppa:fish-shell/release-2  
sudo apt-get update  
sudo apt-get install fish
```

### Set Fish to be Default Shell

In WSL:

```
if [ -t 1 ]; then
        exec fish
fi
```

On dedicated Linux:
Add `<path to fish>` to `/etc/shells`, then `chsh -s <path to fish>`

## Set `vim` to be the default editor

`set -Ux EDITOR vim`

## Install Oh My Fish

Run `curl -L https://get.oh-my.fish | fish`.

Run `omf install bobthefish` (theme).

Run

```
set -U theme_color_scheme dracula
set -U theme_display_virtualenv no
```

### Grab my Fish Functions

Add a GitHub deploy key for this computer ([here's the page](https://github.com/JoshKarpel/fishery/settings/keys)).

Go to `~/.config/fish/functions` and run

```
git init
git remote add origin https://github.com/JoshKarpel/fishery.git
git pull origin master
```

### Add things to Path

Add things to the path using `path_add <path>`.

Remove things using `path_rm <path>`.

### Add Conda commands to Path

Add

```
source (conda info --root)/etc/fish/conf.d/conda.fish
```

to `~/.config/fish/config.fish` to use `conda activate` and `conda deactivate`.
