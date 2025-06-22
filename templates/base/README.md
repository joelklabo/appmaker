# ${APP_NAME}

A modern iOS/macOS application built with Swift 6 and SwiftUI.

## Overview

${APP_NAME} is a native SwiftUI application that [describe your app's purpose here].

## Features

- 🚀 Built with Swift 6 and modern SwiftUI
- 📱 Native iOS and macOS support
- ☁️ iCloud sync via CloudKit
- 🧪 Comprehensive test coverage
- 🛠 Automated build and deployment

## Requirements

- Xcode 16.0 or later
- iOS 18.0+ / macOS 15.0+
- Swift 6.0

## Getting Started

### Prerequisites

```bash
# Install Homebrew (if not already installed)
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Install required tools
brew install xcodegen swiftlint swift-format
```

### Quick Start

1. Clone the repository:
```bash
git clone <repository-url>
cd ${APP_NAME}
```

2. Set up the development environment:
```bash
make setup
```

3. Open the project:
```bash
make dev
```

## Development

### Common Commands

```bash
make help        # Show all available commands
make dev         # Start development
make build       # Build the project
make test        # Run tests
make lint        # Run SwiftLint
make format      # Format code
make ci-quiet    # Run full CI pipeline
```

### Project Structure

```
${APP_NAME}/
├── ${APP_NAME}/              # iOS/macOS app
├── Packages/${APP_NAME}Kit/  # Core business logic
├── Tests/                    # Test suite
├── ci_scripts/              # CI/CD scripts
└── project.yml              # XcodeGen configuration
```

### Architecture

- **Model-View (MV)**: Modern SwiftUI architecture without ViewModels
- **SwiftData**: Local persistence with CloudKit sync
- **Swift 6 Concurrency**: Actors and async/await
- **Swift Testing**: Modern testing with @Test

## Contributing

1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Run `make ci-quiet` to ensure quality
5. Submit a pull request

## License

Copyright © ${YEAR} ${ORGANIZATION}. All rights reserved.