# My Neovim configuration <!-- omit in toc -->

## Summary <!-- omit in toc -->

- [BEFORE YOU CLONE](#before-you-clone)
- [Requirements](#requirements)
- [Install dependencies](#install-dependencies)
  - [Arch Linux](#arch-linux)
- [How to install](#how-to-install)
- [How to uninstall](#how-to-uninstall)
- [Neovim configuration folder structure](#neovim-configuration-folder-structure)
- [Special Thanks](#special-thanks)

---

## BEFORE YOU CLONE

**DISCLAIMER**: This configuration are based on my personal needs and may not be right for everyone, but I intend to document to such an extent that you understand how the setting is structured and how/why it works. I take no responsibility for the endless hours of Neovim configuration you are about to embark on and the unhealthy bond that you will form with your editor. Proceed at your own risk!

## Requirements

- [**Neovim**][neovim]: I recommend installing via Neovim Version Manager called [bob][bob]

[neovim]: https://github.com/neovim/neovim/wiki/Installing-Neovim#install-from-package
[bob]: https://github.com/MordechaiHadad/bob#install-with-pacman

- [**Git**][git]: to download my config, of course...

[git]: https://git-scm.com/

- [**Clipboard provider**][provider-clipboard]: To make the system clipboard works with Neovim
  - `wl-clipboard`, if you use Wayland;
  - `xclip`, if you use X11;

[provider-clipboard]: https://neovim.io/doc/user/provider.html#clipboard

- [**Python provider**][provider-python]: For Python 3 integration

[provider-python]: https://github.com/neovim/pynvim

- [**Node.js provider**][provider-nodejs]: For Node.js integration, I recommend installing via Node Version Manager called [nvm][nvm]

[provider-nodejs]: https://neovim.io/doc/user/provider.html#provider-nodejs
[nvm]: https://github.com/nvm-sh/nvm#installing-and-updating

## Install dependencies

### Arch Linux

```bash
sudo pacman -S git # to make git clone for downloading my neovim configuration

### Neovim ###
sudo pacman -S bob # Neovim Version Manager
bob use latest # bob install the latest stable release of Neovim

### Providers ###
## Clipboard
sudo pacman -S wl-clipboard # for Wayland
# or
sudo pacman -S xclip # for X11

## Python
sudo pacman -S python-pynvim # Python integration for Neovim

## Node.js
# Node Version Manager
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash
echo 'source /usr/share/nvm/init-nvm.sh' >> ~/.bashrc

# Install latest LTS version of Node.js
nvm install --lts
nvm use --lts

npm i neovim # Node.js integration for Neovim
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
├── 🚫 .gitignore # ignore it... 😉
├── 🏁 init.lua # starting point
├── ⚙️ lua # where does all Neovim configuration reside
│   └── 💚 core # Neovim's built-in configuration
│       ├── 🌐 global.lua
│       └── 🔘 options.lua
└── 📖 README.md # manifest file
```

## Special Thanks

- [Josean Martinez][josean-martinez]: for the structure of Neovim's folders, very clean, simple and modular from which he inspired me to create this configuration.

[josean-martinez]: https://www.youtube.com/watch?v=vdn_pKJUda8&list=PLnu5gT9QrFg36OehOdECFvxFFeMHhb_07&index=4

---

> The computing scientist's main challenge is not to get confused by the complexities of his own making.
>
> \- Edsger W. Dijkstra
