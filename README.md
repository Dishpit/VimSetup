# VimSetup

This repo contains my personal Vim configuration for easy setup across multiple machines. It includes basic editor settings, plugins for improved functionality, and a theme for aesthetics.

## Prerequisites

Before installing this Vim config, ensure you have Vim installed with Python3 support (required for YouCompleteMe). You can verify this by running:

```bash
vim --version
```

Make sure `+python3` appears in the output.

## Installation

### 1. Clone
Clone this repo into your home directory or any preferred location. For example:
```bash
git clone https://github.com/Dishpit/vimsetup.git ~/.vim
```

### 2. Install Vim-Plug
You'll need `vim-plug` to manage Vim plugins. Install it by running:
```bash
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

### 3. Link
Link the `.vimrc` file from the cloned repo to your home directory.
```bash
ln -s ~/.vim/.vimrc ~/.vimrc
```

### 4. Install Plugins
Open Vim, and install the plugins by running:
```bash
:PlugInstall
```

### 5. Compile
Navigate to the YouCompleteMe plugin directory and compile it:
```bash
cd ~/.vim/plugged/YouCompleteMe
python 3 install.py --all
```

## Updating
To update plugins, open Vim and run:
```bash
:PlugUpdate
```

## Customizing
Feel free to customize the `.vimrc` file to suit your preferences. Add new plugins, change settings, and tweak the editor to make it your own. I'm providing this as an example of what works for me, so bear in mind everybody's different.

## Issues
If you run into any problems with the config or have suggestions, please open an issue or a PR.
