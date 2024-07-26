// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "TcpCapacitorPlugin",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "TcpCapacitorPlugin",
            targets: ["TCPPluginPlugin"])
    ],
    dependencies: [
        .package(url: "https://github.com/ionic-team/capacitor-swift-pm.git", branch: "main")
    ],
    targets: [
        .target(
            name: "TCPPluginPlugin",
            dependencies: [
                .product(name: "Capacitor", package: "capacitor-swift-pm"),
                .product(name: "Cordova", package: "capacitor-swift-pm")
            ],
            path: "ios/Sources/TCPPluginPlugin"),
        .testTarget(
            name: "TCPPluginPluginTests",
            dependencies: ["TCPPluginPlugin"],
            path: "ios/Tests/TCPPluginPluginTests")
    ]
)