// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "FireworkVideoIVSSupport",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "FireworkVideoIVSSupport",
            targets: ["FireworkVideoIVSSupport", "FireworkVideoIVSSupportDependencies"]
        )
    ],
    dependencies: [
        .package(
            url: "https://github.com/loopsocial/AmazonIVSPlayer.git",
            .exact("1.38.0")
        )
    ],
    targets: [
        .binaryTarget(
            name: "FireworkVideoIVSSupport",
            url: "https://github.com/loopsocial/firework_ios_sdk_ivs_support/releases/download/v0.9.6/FireworkVideoIVSSupport-v0.9.6.xcframework.zip",
            checksum: "77414dfd8d4eae6c68b0e29fcddf45031ed86fa3006e42c1ceef7dfe386bf2e5"
        ),
        .target(
            name: "FireworkVideoIVSSupportDependencies",
            dependencies: [
                .product(name: "AmazonIVSPlayer", package: "AmazonIVSPlayer")
            ]
        )
    ]
)
