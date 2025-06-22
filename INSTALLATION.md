# AppMaker Installation Guide

## Prerequisites

Before installing AppMaker, ensure you have:
- macOS 13.0 or later
- Xcode 15.0 or later (from App Store)
- Git configured with your name and email

### Check Prerequisites

```bash
# Check Xcode
xcodebuild -version

# Check git config
git config user.name
git config user.email

# If git not configured:
git config --global user.name "Your Name"
git config --global user.email "your.email@example.com"
```

## Installation Methods

### Method 1: Quick Install (Recommended)

```bash
# One line installation
curl -fsSL https://raw.githubusercontent.com/yourusername/appmaker/main/install-ultimate.sh | bash

# Reload shell
source ~/.zshrc
```

### Method 2: Manual Install

```bash
# Clone repository
git clone https://github.com/yourusername/appmaker.git
cd appmaker

# Run installer
chmod +x install-ultimate.sh
./install-ultimate.sh

# Reload shell
source ~/.zshrc
```

### Method 3: Direct Download

```bash
# Download script
curl -o ~/.local/bin/appmaker https://raw.githubusercontent.com/yourusername/appmaker/main/appmaker-ultimate

# Make executable
chmod +x ~/.local/bin/appmaker

# Add to PATH (if needed)
echo 'export PATH="$HOME/.local/bin:$PATH"' >> ~/.zshrc
source ~/.zshrc
```

## Verify Installation

```bash
# Check installation
which appmaker

# Test with a sample app
appmaker TestApp
```

## Troubleshooting

### "command not found"
```bash
# Ensure PATH is set
echo $PATH | grep .local/bin

# If missing, add it
echo 'export PATH="$HOME/.local/bin:$PATH"' >> ~/.zshrc
source ~/.zshrc
```

### "xcodegen: command not found"
```bash
# Install via Homebrew
brew install xcodegen
```

### "permission denied"
```bash
# Fix permissions
chmod +x ~/.local/bin/appmaker
```

## Uninstallation

```bash
# Remove AppMaker
rm ~/.local/bin/appmaker

# Remove from PATH (optional)
# Edit ~/.zshrc and remove the PATH line
```

## Updating

```bash
# Update to latest version
curl -o ~/.local/bin/appmaker https://raw.githubusercontent.com/yourusername/appmaker/main/appmaker-ultimate
chmod +x ~/.local/bin/appmaker
```

## System Requirements

### Minimum Requirements
- macOS 13.0 (Ventura)
- Xcode 15.0
- 2GB free disk space
- Internet connection (first run only)

### Recommended
- macOS 14.0+ (Sonoma)
- Xcode 16.0+
- Apple Silicon Mac
- 5GB free disk space

## Next Steps

After installation:

1. **Create your first app**
   ```bash
   appmaker MyFirstApp
   ```

2. **Explore the generated code**
   - Opens automatically in Xcode
   - Press Cmd+R to run

3. **Read the documentation**
   - Each app includes README.md
   - CLAUDE.md for AI assistance

## Support

- GitHub Issues: https://github.com/yourusername/appmaker/issues
- Documentation: https://github.com/yourusername/appmaker/wiki

---

Installation should take less than 30 seconds. Creating your first app takes another 30 seconds.