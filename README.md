# dotfiles

# Core setup (bash, vim, git)

Initial setup:
```bash
# Clone the repo
git clone https://github.com/curiousdragon/dotfiles.git
# Enter the folder
cd dotfiles
# Source bash configs
source bashfig-core.sh
# Enter vimrc-core
vim vimrc-core
# Run in vim to source vimrc-core configs
:so %
```

Optional symlink commands if desired:
```bash
cd dotfiles
ln -s $(pwd) ~/.dotfiles
cd ~/.dotfiles
ln -s $(pwd)/bashfig-core.sh ~/.bashrc
ln -s $(pwd)/vimrc-core ~/.vimrc
```

# The full setup (Mac)

## Quick start

Set up the configs folder in `~`.
```bash
git clone https://github.com/curiousdragon/dotfiles.git
# configs folder
ln -s $(pwd)/dotfiles ~/.dotfiles
cd ~/.dotfiles
```

Link `vim` and `git` configs.
```bash
cd ~/.dotfiles
# vim
ln -s $(pwd)/vimrc ~/.vimrc
ln -s $(pwd)/UltiSnips ~/.vim/UltiSnips
ln -s $(pwd)/gvimrc ~/.gvimrc
# git
ln -s $(pwd)/gitconfig ~/.gitconfig
ln -s $(pwd)/gitprofile ~/.gitprofile
ln -s $(pwd)/gitignore ~/.gitignore_global
```

### bash

**Warning!** This links `bashfig.sh` to `~/.bash_profile`,
so make sure to first check if there is already an existing `~/.bash_profile`,
and to save the pre-existing one as a different file if you want to keep a
copy of it.

```bash
cd ~/.dotfiles
ln -s $(pwd)/bashfig.sh ~/.bash_profile
source bashfig.sh
```

### zsh

**Warning!** This links `zshfig.sh` to `~/.zshrc`,
so make sure to first check if there is already an existing `~/.zshrc`,
and to save the pre-existing one as a different file if you want to keep a
copy of it.

```bash
cd ~/.dotfiles
ln -s $(pwd)/zshfig.sh ~/.zshrc
source zshfig.sh
```

## Installation

Clone this repo.
```bash
git clone https://github.com/curiousdragon/dotfiles.git
```

Link to the repository.
```bash
git clone https://github.com/curiousdragon/dotfiles.git
# configs folder
ln -s $(pwd)/dotfiles ~/.dotfiles
cd ~/.dotfiles
```

Link configs.
```bash
cd ~/.dotfiles
# vim
ln -s $(pwd)/vimrc ~/.vimrc
ln -s $(pwd)/UltiSnips ~/.vim/UltiSnips
ln -s $(pwd)/gvimrc ~/.gvimrc
# git
ln -s $(pwd)/gitconfig ~/.gitconfig
ln -s $(pwd)/gitprofile ~/.gitprofile
ln -s $(pwd)/gitignore ~/.gitignore_global
# misc
ln -s $(pwd)/gemrc ~/.gemrc
ln -s $(pwd)/ghstackrc ~/.ghstackrc
```

Add shell specific config links and reset the terminal:

`bash`:

> **Warning!** This links `bashfig.sh` to `~/.bash_profile`,
> so make sure to first check if there is already an existing `~/.bash_profile`,
> and to save the pre-existing one as a different file if you want to keep a
> copy of it.

```bash
cd ~/.dotfiles
ln -s $(pwd)/bashfig.sh ~/.bash_profile
source bashfig.sh
```

`zsh`:

> **Warning!** This links `zshfig.sh` to `~/.zshrc`,
> so make sure to first check if there is already an existing `~/.zshrc`,
> and to save the pre-existing one as a different file if you want to keep a
> copy of it.

```bash
cd ~/.dotfiles
ln -s $(pwd)/zshfig.sh ~/.zshrc
source zshfig.sh
```

### Installing other software / configs

Other software of interest:

- [Homebrew](https://brew.sh/): package manager
- [MacVim](https://macvim-dev.github.io/macvim/): vim but macOS

Install Homebrew.
```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
eval "$(/opt/homebrew/bin/brew shellenv)"
```

Install Homebrew packages through the `Brewfile`.
This also includes the following casks (apps):

- [CLion](https://www.jetbrains.com/clion/): C/C++ IDE
- [Discord](https://discord.com/): messaging platform
- [Firefox](https://www.mozilla.org/en-US/firefox/new/): preferred browser
- [Google Chrome](https://www.google.com/chrome/): another browser
- [iTerm2](https://iterm2.com/): terminal but macOS specific
- [Karabiner Elements](https://karabiner-elements.pqrs.org/):
    keyboard customizer
- [MacTeX](https://www.tug.org/mactex/): LaTeX, etc. for mac
- [Miniconda](https://docs.conda.io/en/latest/miniconda.html):
    minimal conda installer
- [Obsidian](https://obsidian.md/): markdown notetaking
- [Rectangle](https://rectangleapp.com/): window mover + resizer
- [Skim](https://skim-app.sourceforge.io/): PDF viewer
- [Steam](https://store.steampowered.com/about/): game installer
- [Visual Studio Code (VSCode)](https://code.visualstudio.com/): IDE

Symlink the `Brewfile` and then install packages and apps:
```bash
cd ~/.dotfiles
ln -s $(pwd)/Brewfile ~/Brewfile
brew bundle install
```

And add `brew` aliases:
```bash
brew alias cl='cleanup --prune=all'
brew alias bd='bundle dump --file -'
brew alias # list currently installed aliases
```

## Additional configurations

### Karabiner Elements

See ["the location of the configuration file"](https://karabiner-elements.pqrs.org/docs/manual/misc/configuration-file-path/) for reference.

Symlink the karabiner folder into `.config`:
```bash
cd ~/.dotfiles
ln -s $(pwd)/karabiner ~/.config/karabiner
```

Note that for Karabiner Elements to use the symlinked config folder,
`karabiner-grabber` needs full disk access,
found under "Security and Privacy" in System Preferences.

### Rectangle

Import this config into Rectangle:
```
rectangleconfig.json
```

### iTerm

Change default profile in iTerm to the following:
```
# Colors
background = 1e1e1e
blue = 0072ff
bright blue = 91c2ff
smart box cursor color
# Window
transparency = 11
blur = 10
custom window title (default)
# Session
after a session ends = No Action
```

### Vim

Install [vim-plug](https://github.com/junegunn/vim-plug)
```bash
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

<!--
Install dependencies for the vim code completion engine,
[YouCompleteMe](https://github.com/ycm-core/YouCompleteMe)
```
brew install cmake python go nodejs
```
-->

Open `vimrc` in `vim` and run:
```
:so %
:PlugInstall
```

Alternatively, install plugins via the command line by
```
vim +PlugInstall +qall
```
