# AppMaker Requirements & Specification

## Core Requirement

**Create production-ready iOS/macOS apps with a single command: `appmaker AppName`**

## Functional Requirements

### Must Have (v1.0)
- ✅ Single command app creation
- ✅ Zero configuration required
- ✅ Auto-detect all settings from environment
- ✅ Generate compilable Swift 6 code
- ✅ Include working tests
- ✅ Create git repository
- ✅ Open in Xcode automatically
- ✅ Work on any Mac with Xcode

### Should Have (v1.1)
- Multiple app templates (lean, enterprise, game)
- Backend service integration
- App Store assets generation
- Analytics setup
- Push notification config

### Could Have (v2.0)
- Web dashboard
- Team collaboration
- Template marketplace
- AI-powered customization
- Cross-platform support

## Non-Functional Requirements

### Performance
- App generation: < 5 seconds
- Installation: < 30 seconds  
- Zero runtime dependencies

### Usability
- Single command interface
- No documentation needed
- No configuration files
- No command-line flags
- Works immediately after install

### Reliability
- 100% success rate
- Never generates broken code
- Always creates buildable project
- Handles all error cases gracefully

### Compatibility
- macOS 13.0+
- Xcode 15.0+
- Swift 5.9+
- bash/zsh shell

## Constraints

### Technical Constraints
- Pure bash script (no Python/Ruby/Node)
- No external dependencies
- Under 1000 lines of code
- Single file distribution

### Design Constraints  
- No interactive prompts
- No configuration files
- No options or flags
- No manual setup steps

### User Constraints
- Must have Xcode installed
- Must have git configured
- Must provide valid app name
- Must have write permissions

## Smart Defaults

All decisions are made automatically:

| Setting | Default Value | Source |
|---------|--------------|--------|
| Author | Git user.name | Auto-detected |
| Email | Git user.email | Auto-detected |  
| Organization | Email domain | Extracted |
| Bundle ID | com.{org}.{app} | Generated |
| Min iOS | 18.0 | Current - 1 |
| Min macOS | 15.0 | Current - 1 |
| Swift | 6.0 | Latest stable |
| Architecture | Model-View | Best practice |
| Testing | Swift Testing | Modern choice |
| Package Manager | SPM | Native |

## Success Criteria

1. **Time to First App**: < 60 seconds from install
2. **Learning Curve**: Zero (just type app name)
3. **Success Rate**: 100% working apps
4. **User Satisfaction**: No configuration needed
5. **Code Quality**: Passes all lints and tests

## Out of Scope

- Android/Web support
- Custom templates (v1)
- Configuration options
- Interactive wizards
- Database setup
- Authentication
- Third-party services

## Validation

Every generated app must:
1. Build without errors
2. Run on simulator
3. Pass initial tests
4. Have no linter warnings
5. Include documentation
6. Be git committed

## Future Evolution

The tool should remain simple while becoming more intelligent:
- Learn from user patterns
- Auto-update best practices
- Generate better defaults
- Add optional advanced features
- Maintain backwards compatibility

---

**The Prime Directive**: If a feature would require documentation to understand, it doesn't belong in AppMaker.