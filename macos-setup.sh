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

# # Install Oh My Zsh
# echo "Installing Oh My Zsh..."
# sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# # Install Powerlevel10k theme for Oh My Zsh
# echo "Installing Powerlevel10k theme..."
# git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

# # Install zsh-autosuggestions
# echo "Installing zsh-autosuggestions..."
# git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# # Install zsh-syntax-highlighting
# echo "Installing zsh-syntax-highlighting..."
# git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# # Install fzf-tab
# echo "Installing fzf-tab..."
# git clone https://github.com/Aloxaf/fzf-tab ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/fzf-tab

# # Install fzf
# echo "Installing fzf..."
# brew install fzf
# /usr/local/opt/fzf/install

# # Reminder to update .zshrc
# echo "Don't forget to update your ~/.zshrc file with the installed plugins and theme."

# Don't forget to add to ~/.zshrc: plugins=(git zsh-autosuggestions zsh-syntax-highlighting fzf-tab fzf)

