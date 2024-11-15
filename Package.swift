// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "GitYourFeedback",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "GitYourFeedback",
            targets: ["GitYourFeedback"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        .package(url: "https://github.com/dougzilla32/CLImageEditor", from: "0.0.3"),
        .package(url: "https://github.com/groue/GRMustache.swift", from: "6.0.0"),
        .package(url: "https://github.com/ashleymills/Reachability.swift", from: "5.0.0")
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "GitYourFeedback",
            dependencies: [
                "CLImageEditor",
                .product(name: "Reachability", package: "reachability.swift"),
                .product(name: "Mustache", package: "grmustache.swift")],
            resources: [
                .process("Resources")
            ]
        ),
    ]
)
