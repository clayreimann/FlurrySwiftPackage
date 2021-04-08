// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Flurry",
    platforms: [
        .iOS(.v9),
        .tvOS(.v9),
        .watchOS(.v2)
        ],
    products: [
        .library(
            name: "FlurryAnalyticsSPM",
            targets: ["FlurryAnalytics","FlurryCrashReporter"]
        ),
        .library(
            name: "FlurryMessagingSPM",
            targets: ["FlurryMessaging"]
        ),
        .library(
            name: "FlurryConfigSPM",
            targets: ["FlurryConfig"]
        ),
        .library(
            name: "FlurryAdsSPM",
            targets: ["FlurryAds"]
        )
    ],
    targets: [
        .target(
            name: "FlurryAnalytics",
            dependencies: ["FlurryAnalyticsBinary","FlurryCrashReporter"]
        ),
        .target(
            name: "FlurryMessaging",
            dependencies: ["FlurryMessagingBinary"]
        ),
        .target(
            name: "FlurryConfig",
            dependencies: ["FlurryConfigBinary"]
        ),
        .target(
            name: "FlurryAds",
            dependencies: ["FlurryAdsBinary"]
        ),
        .target(
            name: "FlurryCrashReporter",
            dependencies: ["FlurryCrashReporterBinary"]
        ),
        .binaryTarget(
            name: "FlurryAnalyticsBinary",
            path: "artifacts/Flurry.xcframework"
        ),
        .binaryTarget(
            name: "FlurryMessagingBinary",
            path: "artifacts/FlurryMessaging.xcframework"
        ),
        .binaryTarget(
            name: "FlurryConfigBinary",
            path: "artifacts/FlurryConfig.xcframework"
        ),
        .binaryTarget(
            name: "FlurryAdsBinary",
            path: "artifacts/FlurryAds.xcframework"
        ),
        .binaryTarget(
            name: "FlurryCrashReporterBinary",
            path: "artifacts/CrashReporter.xcframework"
        ),

        .testTarget(
            name: "FlurryAnalyticsSPM",
            dependencies: ["FlurryAnalytics"]
        ),
        .testTarget(
            name: "FlurryMessagingSPM",
            dependencies: ["FlurryMessaging"]
        ),
        .testTarget(
            name: "FlurryConfigSPM",
            dependencies: ["FlurryConfig"]
        ),
        .testTarget(
            name: "FlurryAdsSPM",
            dependencies: ["FlurryAds"]
        )
    ]
)
