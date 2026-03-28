#!/bin/bash
set -e

BIN_DIR="$HOME/.local/bin" # Installation local to the user
APP_NAME="noterm"

echo "Starting Noterm installation..."

# Create the local bin directory if it's missing
if [ ! -d "$BIN_DIR" ]; then
    echo "Creating $BIN_DIR..."
    mkdir -p "$BIN_DIR"
fi

if [ ! -f "$APP_NAME" ]; then
    echo "[-] Error: Could not find the file '$APP_NAME' in this folder."
    echo "Make sure you are running this script from the Noterm repository."
    exit 1
fi

# Making the script executable
echo "Setting execution permissions..."
chmod +x "$APP_NAME"

# Copy to the local bin
echo "Installing $APP_NAME to $BIN_DIR..."
cp "$APP_NAME" "$BIN_DIR/$APP_NAME"

# 6. The PATH Check
echo "Checking system PATH..."
if [[ ":$PATH:" != *":$BIN_DIR:"* ]]; then
    echo "--------------------------------------------------------"
    echo "[-]  WARNING: $BIN_DIR is not in your PATH."
    echo "Your system won't recognize the 'noterm' command yet."
    echo ""
    echo "To fix this, add this line to the end of your ~/.bashrc:"
    echo "export PATH='$HOME/.local/bin:$PATH'"
    echo ""
    echo "Then run: source ~/.bashrc"
    echo "--------------------------------------------------------"
else
    echo "[+] Installation complete! Run '$APP_NAME' to start."
fi