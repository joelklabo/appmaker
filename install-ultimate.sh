#!/bin/bash

# AppMaker Ultimate - One Line Installation

echo "Installing AppMaker..."

# Create bin directory if needed
mkdir -p ~/.local/bin

# Copy the script
cp appmaker-ultimate ~/.local/bin/appmaker
chmod +x ~/.local/bin/appmaker

# Add to PATH if needed
if [[ ":$PATH:" != *":$HOME/.local/bin:"* ]]; then
    echo 'export PATH="$HOME/.local/bin:$PATH"' >> ~/.zshrc
    echo "Added ~/.local/bin to PATH"
fi

echo "✅ Installation complete!"
echo ""
echo "Usage: appmaker YourAppName"
echo ""
echo "Try it now:"
echo "  source ~/.zshrc"
echo "  appmaker MyFirstApp"