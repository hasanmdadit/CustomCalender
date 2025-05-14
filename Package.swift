// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription


let package = Package(
    name: "CustomCalender",
    platforms: [.iOS(.v15)],
    targets: [
        .target(name: "CustomCalender"),
        .testTarget(
            name: "CustomCalenderTests",
            dependencies: ["CustomCalender"],
            swiftSettings: [
                .enableExperimentalFeature("Embedded"),
                .enableExperimentalFeature("StrictConcurrency"),
                .enableExperimentalFeature("TestableExecutables"),
                .enableExperimentalFeature("Testing") // 👈 this one enables @Suite, @Test
            ]
        )
    ]
)
