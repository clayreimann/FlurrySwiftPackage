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
        // Products define the executables and libraries produced by a package, and make them visible to other packages.
        .library(
            name: "FlurryAnalytics",
            targets: ["FlurryAnalytics"]
        ),
        .library(
            name: "FlurryMessaging",
            targets: ["FlurryMessaging"]
        ),
        .library(
            name: "FlurryConfig",
            targets: ["FlurryConfig"]
        ),
        .library(
            name: "FlurryAds",
            targets: ["FlurryAds"]
        )
    ],
    dependencies: [],
    targets: [
        // Analytics SDK
        .target(
            name: "FlurryAnalytics",
            dependencies: ["FlurryAnalyticsBinary"]
        ),
        .binaryTarget(
            name: "FlurryAnalyticsBinary",
            path: "artifacts/Flurry.xcframework"
        ),
        .binaryTarget(
            name: "CrashReporterBinary",
            path: "artifacts/CrashReporter.xcframework"
        ),
        
        // Messaging SDK
        .target(
            name: "FlurryMessaging",
            dependencies: ["FlurryMessagingBinary"]
        ),
        .binaryTarget(
            name: "FlurryMessagingBinary",
            path: "artifacts/FlurryMessaging.xcframework"
        ),
        
        // Config SDK
        .target(
            name: "FlurryConfig",
            dependencies: ["FlurryConfigBinary"]
        ),
        .binaryTarget(
            name: "FlurryConfigBinary",
            path: "artifacts/FlurryConfig.xcframework"
        ),
        
        // Ads SDK
        .target(
            name: "FlurryAds",
            dependencies: ["FlurryAdsBinary"]
        ),
        .binaryTarget(
            name: "FlurryAdsBinary",
            path: "artifacts/FlurryAds.xcframework"
        ),
        
        // Tests
        .testTarget(
            name: "FlurryAnalyticsTests",
            dependencies: ["FlurryAnalytics"]
        ),
        .testTarget(
            name: "FlurryMessagingTests",
            dependencies: ["FlurryMessaging"]
        ),
        .testTarget(
            name: "FlurryConfigTests",
            dependencies: ["FlurryConfig"]
        ),
        .testTarget(
            name: "FlurryAdsTests",
            dependencies: ["FlurryAds"]
        )
    ]
)
