import SwiftUI
import ${APP_NAME}Kit

@main
struct ${APP_NAME}App: App {
    // SwiftData container from the Kit
    let container = ${APP_NAME}Kit.container()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .modelContainer(container)
        }
    }
}