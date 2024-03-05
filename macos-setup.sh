#!/bin/bash

# Check if Homebrew is installed
if ! command -v brew &> /dev/null
then
    echo "Homebrew is required to run this script."
    echo "Please install Homebrew from https://brew.sh/"
    exit 1
fi

# List of CLI apps (Formulae) to install
# Add your CLI apps here
CLI_APPS=()

# List of macOS apps with GUI (Casks) to install
GUI_APPS=(
    "cheatsheet" 
    "cleanshot" 
    "gitkraken" 
    "keka" 
    "maccy" 
    "notion" 
    "runjs" 
    "slack" 
    "viber" 
    "webstorm" 
    "vlc" 
    "visual-studio-code" 
    "sublime-text" 
    "postman" 
    "bitwarden" 
    "deepl" 
    "devutils" 
    "iina" 
    "hiddenbar" 
    "numi"
    "iterm2" 
    "command-x" 
    "jump-desktop-connect" 
    "alt-tab" 
    "time-out" 
    "cleanmymac" 
    "rectangle-pro"
    "google-chrome"
)

echo "Starting to install CLI apps..."
# Install CLI apps using Homebrew (Formulae)
for app in "${CLI_APPS[@]}"
do
    echo "Installing $app..."
    brew install $app
done

echo "Starting to install GUI apps..."
# Install GUI apps using Homebrew Cask
for app in "${GUI_APPS[@]}"
do
    echo "Installing $app..."
    brew install --cask $app
done

echo "All applications have been installed."
