# Noterm 📝

A lightning-fast, terminal-based note-taking TUI (Text User Interface) built by repurposing the power of `fzf`. 

Noterm acts as a modular wrapper, gluing together standard Linux tools to create a seamless, keyboard-driven environment for managing, searching, and previewing your notes.

## ✨ Features
* **Fuzzy Search & Jump Mode:** Instantly find your notes by typing, or press `Ctrl-Space` to use jump-labels.
* **Rich Markdown Previews:** Live, syntax-highlighted rendering of Markdown files with zero margins (powered by `glow`).
* **Dynamic UI:** Customizable preview windows, borders, and themes.
* **Smart Configuration:** Generates a `~/.config/noterm/noterm.conf` file automatically for easy tweaking without touching the core script.
* **Color Fallbacks:** Gracefully degrades to plain text if terminal color support is disabled.

## 🛠️ Prerequisites
Noterm relies on a few excellent command-line tools to function. 
* **`fzf`** (Required) - The core fuzzy-finding engine.
* **`bat`** (Required) - Used for syntax highlighting and safe previews. *(Note: Automatically falls back to `batcat` on Debian/Ubuntu).*
* **`glow`** (Optional, but recommended) - Required only if you want to use `.md` (Markdown) formatting instead of `.txt`.

## 🚀 Installation

### Option 1: The Quick Installer (Recommended)
You can download and install Noterm to your local user directory (`~/.local/bin`) using this one-liner:

```bash
curl -sSL [https://raw.githubusercontent.com/YOUR_USERNAME/noterm/main/install.sh](https://raw.githubusercontent.com/YOUR_USERNAME/noterm/main/install.sh) | bash
```

Option 2: Manual Installation

If you prefer to inspect what you are running, you can install it manually:
Bash

git clone [https://github.com/YOUR_USERNAME/noterm.git](https://github.com/YOUR_USERNAME/noterm.git)
cd noterm
chmod +x noterm
mkdir -p ~/.local/bin
cp noterm ~/.local/bin/noterm

(Make sure ~/.local/bin is added to your system's $PATH!)
⚙️ Configuration

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


Made with ❤️ by Pinac Joshi