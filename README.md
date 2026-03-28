# Noterm 📝

A lightning-fast, terminal-based note-taking TUI (Text User Interface) built by repurposing the power of `fzf`. 

Noterm acts as a modular wrapper, gluing together standard Linux tools to create a seamless, keyboard-driven environment for managing, searching, and previewing your notes.

## ✨ Features
* **Fuzzy Search & Jump Mode:** Instantly find your notes by typing, or press `Ctrl-Space` to use jump-labels.
* **Rich Markdown Previews:** Live, syntax-highlighted rendering of Markdown files (powered by `glow`).
* **Dynamic UI:** Customizable preview windows, borders, and themes.
* **Smart Configuration:** Generates a `~/.config/noterm/noterm.conf` file automatically for easy tweaking without touching the core script.

## 🛠️ Prerequisites
Noterm relies on a few command-line tools to function.

|Tool|Requirement|Purpose|
|---|---|---|
|fzf|Required|The core fuzzy-finding engine.|
|bat|Required|Syntax highlighting and previews. (Called batcat on some distros).|
|glow|Optional|Required for Markdown (.md) rendering.|
|Editor|Required|Your favorite editor (Vim, Helix, Neovim, Nano, etc.)|

## 🚀 Installation

1. Clone the repository

```Bash
git clone https://github.com/PinacJoshi/Noterm.git
cd Noterm
```

2. Choose your method

**Method A**: Automated Script (Recommended)

```Bash
chmod +x install.sh
./install.sh
```

**Method B**: Manual Installation

```Bash
chmod +x noterm
mkdir -p ~/.local/bin
cp noterm ~/.local/bin/noterm
```
    [!IMPORTANT]

    Ensure ~/.local/bin is in your $PATH.

## ⚙️ Configuration

The first time you run noterm, it generates a configuration file. You can edit your settings instantly from anywhere by running

```Bash
noterm --config
```

## ⌨️ Keybinds

|Key|Action|
|---|------|
|Enter|Edit/View selected note|
|Ctrl + N|Create a new note|
|Ctrl + Q|Quit Noterm|
|Ctrl + H|Show the Help Menu|
|Ctrl + Space|Trigger Jump Mode|

___

Project Inspired by [Casey Brant's Medium Article](https://medium.com/adorableio/simple-note-taking-with-fzf-and-vim-2a647a39cfa)

Made with ❤️ by Pinac Joshi