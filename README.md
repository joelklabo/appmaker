# AppMaker - iOS/macOS App Generator

Automated project generator for SwiftUI apps based on proven patterns from production apps.

## Features

- 🚀 **Instant Setup** - New app in under a minute
- 📱 **Multi-Platform** - iOS, macOS, watchOS, tvOS
- 🏗 **Modern Architecture** - Swift 6, SwiftUI, SwiftData
- ☁️ **CloudKit Ready** - Sync across devices
- 🧪 **Testing Built-in** - Swift Testing framework
- 🤖 **AI-Friendly** - CLAUDE.md for pair programming
- 🔧 **Full Automation** - Make-based workflows
- 📦 **Modular Design** - Package-based architecture

## Installation

```bash
git clone https://github.com/yourusername/appmaker.git
cd appmaker
./install.sh
source ~/.zshrc
```

## Usage

### Create a New App
```bash
appmaker new MyApp
cd MyApp
make dev
```

### With Options
```bash
# iOS only with specific features
appmaker new MyApp --platforms=ios --features=cloudkit,widgets

# Use a template
appmaker new MyApp --template=prompt-style

# Custom config
appmaker new MyApp --config=custom.yaml
```

## What's Included

Every generated app includes:

- ✅ XcodeGen project generation
- ✅ Comprehensive Makefile
- ✅ SwiftLint + SwiftFormat
- ✅ CI/CD scripts for Xcode Cloud
- ✅ Modular Swift Package architecture
- ✅ SwiftData models with CloudKit
- ✅ Complete test structure
- ✅ AI assistant documentation
- ✅ README with setup instructions

## Project Structure

```
appmaker/
├── appmaker              # Main CLI script
├── install.sh           # Installation script
├── appmaker.config.yaml # Configuration template
├── templates/           # Project templates
│   ├── base/           # Common files
│   ├── vice-style/     # ViceChips patterns
│   └── prompt-style/   # Prompt patterns
├── QUICKSTART.md       # Quick start guide
├── APPMAKER_SYSTEM.md  # Full documentation
└── README.md           # This file
```

## Documentation

- **Quick Start**: See `QUICKSTART.md`
- **Full Guide**: See `APPMAKER_SYSTEM.md`
- **Templates**: Check `templates/` directory

## Contributing

1. Fork the repository
2. Add your templates
3. Test thoroughly
4. Submit pull request

## License

MIT License - see LICENSE file

---

Built with patterns from [ViceChips](https://github.com/joelklabo/ViceChips) and Prompt projects.