# AppMaker

An intelligent iOS app generator that creates domain-specific apps based on your app name.

## What It Does

Creates a complete, working iOS app with appropriate models, UI, and functionality in ~5 seconds. Just name your app and AppMaker figures out what you're building.

## Intelligence Built In

AppMaker detects your app type and generates:
- **WorkoutTracker** → Exercise, Set, and Workout models with fitness UI
- **RecipeBox** → Recipe, Ingredient models with cooking-focused interface  
- **ExpenseLog** → Expense, Category, Budget models with financial tracking
- **NotePad** → Note, Tag, Folder models with rich text editing
- **Any other name** → Smart generic app with full CRUD

## Example: Building a Fitness App

```bash
$ appmaker FitnessTracker

✨ Creating FitnessTracker (fitness app)...
✅ FitnessTracker created successfully!

App Type: fitness
Main Model: Workout

Opening Xcode...

Next steps:
  1. Press Cmd+R to run
  2. Start customizing for your needs

Useful commands:
  make test  - Run tests
  make build - Build app
  make clean - Clean build
```

### What You Get

```
FitnessTracker/
├── Makefile                          # make dev, test, build, clean
├── project.yml                       # XcodeGen configuration
├── FitnessTracker/
│   ├── FitnessTrackerApp.swift      # @main entry point
│   ├── Views/
│   │   └── ContentView.swift        # Workout list + detail views
│   ├── Utilities/
│   │   └── Extensions.swift         # Date, number formatting
│   └── Resources/
│       └── Assets.xcassets/
└── Packages/FitnessTracker/
    ├── Package.swift                # SPM manifest
    ├── Sources/
    │   ├── Models/
    │   │   └── Workout.swift        # Workout, Exercise, Set models
    │   ├── Services/                # Business logic actors
    │   ├── Store/                   # SwiftData configuration
    │   └── Repositories/            # Data access layer
    └── Tests/
        └── FitnessTrackerTests/
            └── BasicTests.swift     # Model tests
```

### What Actually Works (Immediately)

Press Cmd+R. The app runs. You can:
- Create new workouts with custom names
- View workouts in a chronological list
- See workout details (date, duration, exercises)
- Delete workouts with swipe gestures
- Search through your workout history
- Data syncs across devices via iCloud

No setup. No configuration. It just works.

### The Generated Code

**Models/Workout.swift** (Domain-specific models):
```swift
@Model
public final class Workout {
    public var id = UUID()
    public var name: String
    public var date: Date
    public var duration: TimeInterval
    public var notes: String
    public var exercises: [Exercise]
    
    public init(name: String, date: Date = Date()) {
        self.name = name
        self.date = date
        self.duration = 0
        self.notes = ""
        self.exercises = []
    }
}

@Model
public final class Exercise {
    public var id = UUID()
    public var name: String
    public var sets: [ExerciseSet]
    public var restTime: TimeInterval
    // ... more fitness-specific properties
}
```

**Views/ContentView.swift** (Rich UI with navigation):
```swift
struct ContentView: View {
    @Query(sort: \Workout.date, order: .reverse) private var workouts: [Workout]
    @Environment(\.modelContext) private var context
    @State private var showingNewWorkout = false
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(workouts) { workout in
                    NavigationLink(destination: WorkoutDetailView(workout: workout)) {
                        WorkoutRow(workout: workout)
                    }
                }
                .onDelete(perform: deleteWorkouts)
            }
            .navigationTitle("Workouts")
            .toolbar {
                Button("New Workout", systemImage: "plus") {
                    showingNewWorkout = true
                }
            }
            .sheet(isPresented: $showingNewWorkout) {
                NewWorkoutView()
            }
        }
    }
}
```

### Extending Your App (2 minutes)

The generated fitness app is ready to extend:

1. **Add exercise tracking** to workouts:
```swift
func addExercise(to workout: Workout) {
    let exercise = Exercise(name: "Bench Press")
    exercise.sets = [
        ExerciseSet(reps: 10, weight: 135),
        ExerciseSet(reps: 8, weight: 155),
        ExerciseSet(reps: 6, weight: 175)
    ]
    workout.exercises.append(exercise)
}
```

2. **Add workout templates**:
```swift
@Model
public final class WorkoutTemplate {
    public var name: String
    public var exercises: [ExerciseTemplate]
    // Quick-start workouts
}
```

3. **Add progress tracking**:
```swift
extension Workout {
    var totalVolume: Double {
        exercises.flatMap(\.sets)
            .reduce(0) { $0 + ($1.weight * Double($1.reps)) }
    }
}
```

The architecture supports whatever you need to build.

## Live Demo

```bash
$ appmaker TodoApp
✨ Creating TodoApp...
✅ TodoApp created successfully!

Opening Xcode...

$ cd TodoApp
$ make test
🧪 Running tests...
Test Suite 'All tests' passed.
Executed 1 test, with 0 failures.

$ make build
🔨 Building TodoApp...
** BUILD SUCCEEDED **
```

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

## More Examples

```bash
# Recipe app with ingredients and steps
appmaker CookBook

# Expense tracker with categories and budgets  
appmaker MoneyTracker

# Note-taking app with folders and tags
appmaker QuickNotes

# Book library with reading sessions
appmaker BookShelf

# Plant care reminder app
appmaker GardenBuddy
```

Each generates appropriate models and UI for that domain.

## The Point

You have an idea. You want to build it. Not configure it.

```bash
appmaker YourIdea
```

AppMaker understands what you're building and gives you a real starting point, not a generic template.

## Source

The entire tool is one file: [appmaker-ultimate](appmaker-ultimate)

Read it. Fork it. Improve it.

## The Carmack Standard

What would John Carmack do? Make it work perfectly, make it fast, make it simple.

AppMaker:
- **Works perfectly**: Every generated app builds and runs
- **Fast**: 5 seconds from idea to working app
- **Simple**: One command, zero configuration

The intelligence is hidden. The complexity is handled. You just build.

---

*"Simplicity is prerequisite for reliability." - Edsger Dijkstra*