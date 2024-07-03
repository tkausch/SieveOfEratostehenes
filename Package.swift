// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SieveOfEratostehenes",
    platforms: [
        .macOS(.v13) // Specify the minimum macOS version required
    ],
    products: [
        .executable(
            name: "PrimesSieve",
            targets: ["PrimesSieve"]),
    ],
    dependencies: [
        .package(
            url: "https://github.com/apple/swift-argument-parser",
            from: "1.1.0")
    ], 
    targets: [
        .executableTarget(
            name: "PrimesSieve",
            dependencies: [
                .product(name: "ArgumentParser", package: "swift-argument-parser")
            ]
        )
    ]
)
