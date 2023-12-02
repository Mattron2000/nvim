# My Neovim configuration <!-- omit in toc -->

## Summary <!-- omit in toc -->

- [BEFORE YOU CLONE](#before-you-clone)
- [Requirements](#requirements)
- [Install dependencies](#install-dependencies)
  - [Arch Linux](#arch-linux)
- [How to install](#how-to-install)
- [How to uninstall](#how-to-uninstall)
- [Neovim configuration folder structure](#neovim-configuration-folder-structure)

---

## BEFORE YOU CLONE

**DISCLAIMER**: This configuration are based on my personal needs and may not be right for everyone, but I intend to document to such an extent that you understand how the setting is structured and how/why it works. I take no responsibility for the endless hours of Neovim configuration you are about to embark on and the unhealthy bond that you will form with your editor. Proceed at your own risk!

## Requirements

- [**Neovim**][neovim]: I recommend installing via Neovim Version Manager called [bob][bob]

[neovim]: https://github.com/neovim/neovim/wiki/Installing-Neovim#install-from-package
[bob]: https://github.com/MordechaiHadad/bob#install-with-pacman

- [**Git**][git]: to download my config, of course...

[git]: https://git-scm.com/

## Install dependencies

### Arch Linux

```bash
sudo pacman -S git # to make git clone for downloading my neovim configuration

### Neovim ###
sudo pacman -S bob # Neovim Version Manager
bob use latest # bob install the latest stable release of Neovim
```

## How to install

1. Move in the correct directory

    ```bash
    cd ~/.config
    ```

2. If nvim directory exist, use this command to backup it

    ```bash
    [[ -d ./nvim ]] && mv ./nvim ./nvim.bak
    ```

3. Download my configuration

    ```bash
    git clone https://github.com/Mattron2000/nvim.git
    ```

4. Open Neovim to apply changes

    ```bash
    nvim
    ```

## How to uninstall

1. Do a clean uninstallation

    ```bash
    rm -rf ~/.config/nvim
    rm -rf ~/.local/share/nvim
    rm -rf ~/.local/state/nvim
    rm -rf ~/.cache/nvim
    ```

2. If you have a backup and want to use it, use this command

    ```bash
    [[ -d ~/.config/nvim.bak ]] && mv ~/.config/nvim.bak ~/.config/nvim
    ```

## Neovim configuration folder structure

```bash
📁 nvim # root folder
└── 📖 README.md # manifest file
```

---

> The computing scientist's main challenge is not to get confused by the complexities of his own making.
>
> \- Edsger W. Dijkstra
