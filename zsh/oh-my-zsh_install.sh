#!/usr/bin/bash
# Setup script for Z shell and oh-my-zsh, 
# with powerline10k theme and plugins.

```
todo:
  1. install zsh
    sudo apt install zsh

  2. set zsh as default shell
    chsh -s $(which zsh)

  3. install oh-my-zsh with curl
    sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

  4. set powerline10k as theme
    a. install fonts
      dotfiles/zsh/fonts/MesloLGS*.ttf

    b. install powerline10k with git clone command
      git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

  5. use dotfiles from lovelace?
    a. or move local zsh files and dirs to dotfiles, and symlink.

  
```
