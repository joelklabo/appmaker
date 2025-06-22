#!/bin/bash

# AppMaker Installation Script

set -euo pipefail

INSTALL_DIR="${HOME}/.appmaker"
BIN_DIR="${HOME}/.local/bin"

echo "🚀 Installing AppMaker..."

# Create directories
mkdir -p "$INSTALL_DIR"
mkdir -p "$BIN_DIR"

# Copy files
cp -r . "$INSTALL_DIR/"

# Create symlink
ln -sf "$INSTALL_DIR/appmaker" "$BIN_DIR/appmaker"

# Make executable
chmod +x "$BIN_DIR/appmaker"

# Add to PATH if not already there
if [[ ":$PATH:" != *":$BIN_DIR:"* ]]; then
    echo "export PATH=\"\$HOME/.local/bin:\$PATH\"" >> ~/.zshrc
    echo "📝 Added $BIN_DIR to PATH in ~/.zshrc"
    echo "   Run: source ~/.zshrc"
fi

echo "✅ AppMaker installed successfully!"
echo ""
echo "Quick start:"
echo "  appmaker new MyApp"
echo "  cd MyApp"
echo "  make dev"