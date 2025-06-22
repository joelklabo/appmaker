# AppMaker

A bash script that generates iOS apps.

## What It Does

Creates a working iOS app with SwiftUI, SwiftData, and tests in ~5 seconds.

## Example: Building a Note-Taking App

```bash
$ appmaker QuickNotes

✨ Creating QuickNotes...
✅ QuickNotes created successfully!

Opening Xcode...

Next steps:
  1. Press Cmd+R to run
  2. Start building your app!

Useful commands:
  make test  - Run tests
  make build - Build app
  make clean - Clean build
```

### What You Get

```
QuickNotes/
├── Makefile                          # make dev, test, build, clean
├── project.yml                       # XcodeGen configuration
├── QuickNotes/
│   ├── QuickNotesApp.swift          # @main entry point
│   ├── Views/
│   │   └── ContentView.swift        # Initial UI
│   └── Resources/
│       └── Assets.xcassets/
└── Packages/QuickNotes/
    ├── Package.swift                # SPM manifest
    ├── Sources/
    │   ├── QuickNotes/              # Public API
    │   ├── Models/
    │   │   └── Item.swift           # SwiftData model
    │   ├── Services/
    │   │   └── ItemService.swift    # Business logic (actor)
    │   └── Store/
    │       └── DataStore.swift      # Persistence layer
    └── Tests/
        └── QuickNotesTests/
            └── BasicTests.swift     # Swift Testing
```

### What Actually Works (Immediately)

Press Cmd+R. The app runs. You can:
- Add items with the "Add Item" button
- See them in a list with timestamps
- Swipe to delete them
- Data persists between launches (SwiftData)

No setup. No configuration. It just works.

### The Generated Code

**Views/ContentView.swift** (Functional CRUD):
```swift
struct ContentView: View {
    @Query private var items: [Item]
    @Environment(\.modelContext) private var context
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(items) { item in
                    HStack {
                        Text(item.name)
                        Spacer()
                        Text(item.createdAt, style: .time)
                            .font(.caption)
                            .foregroundStyle(.secondary)
                    }
                }
                .onDelete { indexes in
                    for index in indexes {
                        context.delete(items[index])
                    }
                }
            }
            .navigationTitle("QuickNotes")
            .toolbar {
                Button("Add Item") {
                    let item = Item(name: "Item #\(items.count + 1)")
                    context.insert(item)
                }
            }
        }
    }
}
```

**Models/Item.swift** (SwiftData model):
```swift
@Model
public final class Item {
    public var id = UUID()
    public var name: String
    public var createdAt: Date
    
    public init(name: String) {
        self.name = name
        self.createdAt = Date()
    }
}
```

### Making It Real (2 minutes)

Transform the generic app into a note-taking app:

1. **Add a Note model** in `Packages/QuickNotes/Sources/Models/Note.swift`:
```swift
import Foundation
import SwiftData

@Model
public final class Note {
    public var id = UUID()
    public var title: String
    public var content: String
    public var createdAt: Date
    public var modifiedAt: Date
    
    public init(title: String, content: String = "") {
        self.title = title
        self.content = content
        self.createdAt = Date()
        self.modifiedAt = Date()
    }
}
```

2. **Update ContentView** to show notes:
```swift
import SwiftUI
import SwiftData

struct ContentView: View {
    @Query private var notes: [Note]
    @Environment(\.modelContext) private var context
    
    var body: some View {
        NavigationStack {
            List(notes) { note in
                VStack(alignment: .leading) {
                    Text(note.title)
                        .font(.headline)
                    Text(note.content)
                        .font(.caption)
                        .lineLimit(2)
                }
            }
            .navigationTitle("Notes")
            .toolbar {
                Button("Add") {
                    let note = Note(title: "New Note")
                    context.insert(note)
                }
            }
        }
    }
}
```

3. **Run tests**: `make test`
4. **Build**: `make build`
5. **Ship it**: You have a working notes app

## Installation

```bash
curl -fsSL https://raw.githubusercontent.com/joelklabo/appmaker/main/install.sh | bash
source ~/.zshrc
```

Requirements:
- macOS with Xcode
- `brew install xcodegen` (if not installed)

## How It Works

1. **Detects** your name and organization from git config
2. **Creates** a complete project structure
3. **Generates** Swift 6 code with modern patterns
4. **Configures** SwiftData, testing, linting
5. **Opens** Xcode automatically

No configuration files. No options. No complexity.

## Design Decisions

- **Bash**: No dependencies, works everywhere
- **XcodeGen**: Eliminates .xcodeproj conflicts
- **Swift Package Manager**: Modular architecture
- **SwiftData**: Modern persistence
- **Swift Testing**: Better than XCTest
- **Model-View**: No unnecessary ViewModels
- **Actors**: Thread-safe by default

## What This Is Not

- Not a framework (generates standard Swift)
- Not a template engine (creates real projects)
- Not configurable (opinionated defaults)
- Not complex (300 lines of bash)

## The Point

You have an idea. You want to build it. Not configure it.

```bash
appmaker YourIdea
```

Now you're coding, not configuring.

## Source

The entire tool is one file: [appmaker-ultimate](appmaker-ultimate)

Read it. Fork it. Improve it.

---

*"Simplicity is prerequisite for reliability." - Edsger Dijkstra*