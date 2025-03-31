# Prequisities

1. Having ripgrep, fd, bat, lazygit installed
2. [**Nerd font**](https://www.nerdfonts.com/) as your terminal font, *I am using InConsolataGo Nerd Font as I am writing this*

# Installation

## Linux / Macos

1. Backing up your config

```sh
# required
mv ~/.config/nvim{,.bak}

# optional but recommended
mv ~/.local/share/nvim{,.bak}
mv ~/.local/state/nvim{,.bak}
mv ~/.cache/nvim{,.bak}
```

2. Cloning the repo

```sh
# Clone the repo
git clone https://github.com/omardoescode/nvim-dotfiles ~/.config/nvim

# remove the git folder (optional)
rm -rf /.config/nvim/.git # remove the git folder (optional)

# start your journey
nvim
```

## Windows

1. Backing up your config

```sh
# required
Move-Item $env:LOCALAPPDATA\nvim $env:LOCALAPPDATA\nvim.bak

# optional but recommended
Move-Item $env:LOCALAPPDATA\nvim-data $env:LOCALAPPDATA\nvim-data.bak
```

2. Cloning the repo

```sh
# Clone the repo
git clone https://github.com/omardoescode/nvim-dotfiles $env:LOCALAPPDATA\nvim

# remove the git folder (optional)
Remove-Item $env:LOCALAPPDATA\nvim\.git -Recurse -Force

# Start your journey
nvim
```

# Contact Me

1. [Linkedin](https://www.linkedin.com/in/omardoescode/)
2. [Github](https://www.github.com/omardoescode/)
