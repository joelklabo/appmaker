# CLAUDE.md - ${APP_NAME} AI Assistant Guide

AI assistant guidance for working with the ${APP_NAME} codebase. This file helps Claude Code and other AI assistants understand the project structure, conventions, and best practices.

## Quick Reference

**Project**: ${APP_NAME}
**Language**: Swift 6.0, SwiftUI  
**Platforms**: iOS 18.0+, macOS 15.0+  
**Architecture**: Model-View (MV)  
**Key Command**: `make ci-quiet` (run after EVERY change)

## 🚀 Essential Commands

```bash
make ci-quiet    # ALWAYS run after changes - includes lint, format, and tests
make dev         # Generate project + lint + format + open
make test        # Run all tests
make build       # Build for simulator
```

## 📁 Project Structure

```
${APP_NAME}.xcodeproj       # Generated from project.yml (NEVER edit directly)
${APP_NAME}/                # SwiftUI views and UI components
Packages/${APP_NAME}Kit/    # Core business logic package
Tests/                      # Test files
ci_scripts/                 # CI/CD automation
scripts/                    # Build and development scripts
```

## 🔑 Key Architectural Patterns

### Model-View (MV) Architecture
- **NO ViewModels** - Use native SwiftUI state management
- `@State`, `@Observable`, `@Environment` for state
- `@Query` for SwiftData fetching
- `.task` modifier for async operations in views

### Data Models (SwiftData)
- Models in `${APP_NAME}Kit/Sources/Models/`
- CloudKit integration via `iCloud.${BUNDLE_ID_PREFIX}.${APP_NAME}`
- Automatic sync across devices

### Service Layer
- Actor-based services for thread safety
- Located in `${APP_NAME}Kit/Sources/Services/`
- Async/await for all data operations

## 📋 Common Development Tasks

### Adding a New Feature
1. Create models in ${APP_NAME}Kit if needed
2. Add service methods for business logic
3. Create SwiftUI views in ${APP_NAME}/
4. Add tests
5. Run `make ci-quiet`

### Modifying UI
1. Work in ${APP_NAME}/ SwiftUI views
2. Follow MV pattern (no ViewModels)
3. Use `@Environment` for shared state
4. Run `make ci-quiet`

### Testing
- Use Swift Testing (`@Test`, `#expect`)
- NO XCTest in new code
- Test files mirror source structure

## ⚠️ Critical Rules

1. **ALWAYS run `make ci-quiet` after ANY code change**
2. **NEVER edit .xcodeproj directly** - use `project.yml`
3. **NEVER remove SwiftLint rules** - fix the code instead
4. **NO ViewModels** - use MV pattern with native SwiftUI
5. **Use actors** for thread-safe services
6. **Follow existing patterns** in the codebase

## 🛠 Development Workflow

1. Make changes to code
2. Run `make ci-quiet` to validate
3. If tests fail, fix issues
4. Commit only after all checks pass

## 💡 Pro Tips

1. Use `make dev` to quickly open project
2. Check existing code for patterns before implementing
3. Keep views simple - business logic in services
4. Use Swift 6 concurrency features (actors, async/await)
5. Write tests for all new functionality

## 🔍 Debugging

- Check build logs in Xcode for detailed errors
- Use `print()` statements temporarily (remove before commit)
- Verify SwiftData models have proper relationships
- Check CloudKit dashboard for sync issues

## 📱 Platform-Specific Notes

### iOS
- Minimum deployment: iOS 18.0
- Support iPhone and iPad
- Use adaptive layouts

### macOS
- Minimum deployment: macOS 15.0
- Use native macOS UI patterns
- Support keyboard shortcuts

Remember: When in doubt, look at existing code patterns and follow them!