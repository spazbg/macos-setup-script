#!/bin/bash

# Check if Homebrew is installed
if ! command -v brew &> /dev/null
then
    echo "Homebrew is required to run this script."
    echo "Please install Homebrew from https://brew.sh/"
    exit 1
fi

# List of macOS apps to install
APPS=("CheatSheet" "CleanShot" "GitKraken" "Keka" "Maccy" "Notion"
      "RunJS" "slack" "Viber" "WebStorm" "vlc" "iterm2" 
      "visual-studio-code" "Sublime-text" "Postman" "Bitwarden" 
      "Deepl" "DevUtils" "IINA" "Hidden Bar" "Numi")

# List of casks to install
CASKS=("iterm2" "visual-studio-code" "vlc" "slack" "postman" "bitwarden" 
       "hiddenbar" "cheatsheet" "cleanshot" "gitkraken" "keka" "notion" 
       "runjs" "viber" "webstorm" "sublime-text" "deepl" "devutils" 
       "iina" "command-x" "jump-desktop-connect" "alt-tab" "time-out")

# Install apps using Homebrew
for app in "${APPS[@]}"
do
    brew install $app
done

# Install casks using Homebrew
for cask in "${CASKS[@]}"
do
    brew install --cask $cask
done
