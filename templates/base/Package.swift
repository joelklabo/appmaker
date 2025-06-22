// swift-tools-version: 6.0
import PackageDescription

let package = Package(
    name: "${APP_NAME}Kit",
    platforms: [
        .iOS(.v18),
        .macOS(.v15)
    ],
    products: [
        .library(
            name: "${APP_NAME}Kit",
            targets: ["${APP_NAME}Kit"]
        ),
    ],
    dependencies: [
        // Add your package dependencies here
    ],
    targets: [
        // Main umbrella target
        .target(
            name: "${APP_NAME}Kit",
            dependencies: [
                "${APP_NAME}Foundation",
                "${APP_NAME}Store",
                "${APP_NAME}Services"
            ],
            path: "Sources/${APP_NAME}Kit"
        ),
        
        // Foundation - Core models and types
        .target(
            name: "${APP_NAME}Foundation",
            dependencies: [],
            path: "Sources/${APP_NAME}Foundation"
        ),
        
        // Store - Data persistence layer
        .target(
            name: "${APP_NAME}Store",
            dependencies: ["${APP_NAME}Foundation"],
            path: "Sources/${APP_NAME}Store"
        ),
        
        // Services - Business logic
        .target(
            name: "${APP_NAME}Services",
            dependencies: [
                "${APP_NAME}Foundation",
                "${APP_NAME}Store"
            ],
            path: "Sources/${APP_NAME}Services"
        ),
        
        // Tests
        .testTarget(
            name: "${APP_NAME}KitTests",
            dependencies: ["${APP_NAME}Kit"],
            path: "Tests/${APP_NAME}KitTests"
        ),
    ]
)