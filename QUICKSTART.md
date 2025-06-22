# 🚀 AppMaker Quick Start

## Install in 30 Seconds

```bash
cd /Users/honk/code/appmaker
./install.sh
source ~/.zshrc
```

## Create Your First App

```bash
# Create a new app
appmaker new MyAwesomeApp

# Enter the project
cd MyAwesomeApp

# Set up and open
make dev
```

## That's It! 🎉

Your new app includes:
- ✅ Swift 6 + SwiftUI
- ✅ iOS & macOS support
- ✅ SwiftData + CloudKit
- ✅ Complete test suite
- ✅ CI/CD ready
- ✅ AI assistant docs (CLAUDE.md)
- ✅ Linting & formatting
- ✅ Modular architecture

## Common Next Steps

### Add CloudKit
1. Open `project.yml`
2. Add CloudKit capability
3. Run `make generate`

### Add AI Features
```yaml
# In appmaker.config.yaml
features:
  ai_integration: true
```

### Run Tests
```bash
make test
```

### Before Every Commit
```bash
make ci-quiet
```

## Need More?

- Full docs: `APPMAKER_SYSTEM.md`
- Templates: `templates/`
- Examples: Create a test app!

---

**Pro Tip**: Always use `make ci-quiet` before committing! It runs linting, formatting, and tests automatically.