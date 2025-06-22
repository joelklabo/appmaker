# CLAUDE.md - AppMaker Project Vision & AI Guide

## 🎯 Project Goal

**Create the world's simplest iOS/macOS app generator that produces production-ready SwiftUI applications with zero friction.**

## 🌟 Vision

AppMaker eliminates the repetitive setup work of creating new iOS/macOS apps by encoding best practices, modern architecture, and comprehensive tooling into a single command. Every app created with AppMaker starts production-ready, not as a toy project.

## 🧠 Core Philosophy

1. **One Command, Complete App**: `appmaker new MyApp` should create everything needed
2. **Zero Configuration Required**: Smart defaults that actually work in production
3. **Learn Once, Use Forever**: Patterns stay consistent across all generated apps
4. **AI-First Development**: Every app includes AI assistant documentation
5. **Quality Enforced**: Impossible to create a low-quality project

## 🎨 Design Principles

### Simplicity Above All
- If it requires documentation to understand, it's too complex
- If users need to edit config files, we've failed
- If setup takes more than 60 seconds, it's too slow

### Convention Over Configuration
- File structure is always the same
- Commands are always the same
- Patterns are always the same
- Only the app name changes

### Production-Ready by Default
- Testing included and configured
- CI/CD ready to deploy
- Code quality tools active
- Performance optimized
- Security best practices

### Future-Proof Architecture
- Latest Swift and SwiftUI
- Modern concurrency (actors, async/await)
- SwiftData for persistence
- CloudKit for sync
- Modular package design

## 🔧 Technical Decisions

### Why These Choices?

**XcodeGen over .xcodeproj**
- Version control friendly
- Eliminates merge conflicts
- Declarative configuration
- Reproducible builds

**Makefile for Automation**
- Universal, no dependencies
- Simple, readable commands
- Composable tasks
- IDE agnostic

**Swift Package Manager for Modules**
- Native Apple tooling
- Clear dependency graph
- Faster builds
- Better testing isolation

**Model-View Architecture**
- Simplest effective pattern
- Native SwiftUI approach
- No unnecessary abstractions
- Apple's recommended pattern

## 📋 Requirements

### User Requirements
1. **Single Command Creation**: One command to create a new app
2. **No Manual Configuration**: Everything works out of the box
3. **Consistent Structure**: Every app follows the same patterns
4. **Easy Customization**: Simple to modify after generation
5. **Learning Path**: Each app teaches best practices

### Technical Requirements
1. **Fast Generation**: < 5 seconds to create new project
2. **Minimal Dependencies**: Only essential tools required
3. **Cross-Platform**: Works on Intel and Apple Silicon
4. **Version Agnostic**: Adapts to installed Xcode version
5. **Extensible**: Easy to add new templates

### Quality Requirements
1. **100% Success Rate**: Never create a broken project
2. **Always Buildable**: Generated code must compile
3. **Tests Must Pass**: Initial test suite runs green
4. **Lint Clean**: No SwiftLint warnings
5. **Documentation Complete**: README, CLAUDE.md included

## 🎪 The Magic

### Smart Defaults
```yaml
# These are chosen, not configurable:
- iOS 18.0 minimum (current - 1)
- Swift 6.0 with strict concurrency
- SwiftUI lifecycle
- SwiftData + CloudKit
- iPhone + iPad support
- Portrait + Landscape
- Light + Dark mode
```

### Intelligent Templates
- Detects user's organization from git config
- Uses app name for all identifiers
- Generates unique bundle IDs
- Creates appropriate icons
- Sets up proper entitlements

### Zero-Config Features
- GitHub Actions if .github exists
- Xcode Cloud if xcodeproj exists  
- SwiftLint with sensible rules
- Pre-commit hooks installed
- README with actual content

## 🚀 Usage Patterns

### New Developer
```bash
appmaker new MyFirstApp
# Everything just works, learns by exploring
```

### Experienced Developer  
```bash
appmaker new ClientApp --template enterprise
# Gets advanced patterns, security, analytics
```

### Agency/Consultant
```bash
appmaker new StartupMVP --template lean
# Minimal viable product, ready to iterate
```

## 🔮 Future Evolution

### Phase 1: Core Tool (Current)
- Basic app generation
- Essential templates
- Command-line interface

### Phase 2: Enhanced Templates
- Domain-specific templates (e-commerce, social, productivity)
- Platform-specific optimizations
- Advanced architectural patterns

### Phase 3: AI Integration
- Natural language app descriptions
- Automatic feature detection
- Code generation from requirements
- Smart template selection

### Phase 4: Ecosystem
- Template marketplace
- Community contributions
- Plugin system
- Cloud-based generation

## 🎯 Success Metrics

1. **Time to First App**: < 60 seconds
2. **Commands to Memorize**: 1 (`appmaker new`)
3. **Generated Code Quality**: 100% lint clean
4. **User Satisfaction**: "It just works"
5. **Adoption**: Becomes the standard way to create apps

## 🤝 For AI Assistants

When helping with AppMaker development:

1. **Preserve Simplicity**: Every feature must be zero-config
2. **Maintain Consistency**: All apps follow the same patterns
3. **Enforce Quality**: No shortcuts on testing or documentation
4. **Think Like a User**: Optimize for the developer experience
5. **Document Everything**: Code should be self-explanatory

### Key Files to Know
- `appmaker`: Main CLI script (Bash)
- `templates/`: Template file hierarchy  
- `config.yaml`: User preferences (minimal)
- `install.sh`: One-line installation

### Development Guidelines
- Keep the CLI under 500 lines
- Templates must be valid Swift/YAML
- Every template file should have variables
- Test with real projects
- Documentation in the code

## 🎁 The Promise

**With AppMaker, creating a new iOS/macOS app is as simple as naming it.**

Everything else—architecture, testing, CI/CD, documentation, code quality—is handled automatically. Developers can focus on what makes their app unique, not on boilerplate setup.

This isn't just a code generator. It's a crystallization of best practices, a teaching tool, and a productivity multiplier all in one.

---

*"The best tool is the one you don't notice you're using."*