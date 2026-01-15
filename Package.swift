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
            url: "https://github.com/loopsocial/firework_ios_sdk_ivs_support/releases/download/v0.9.5-beta.1/FireworkVideoIVSSupport-v0.9.5-beta.1.xcframework.zip",
            checksum: "93eeb568497c598ed620e448af22aeee30dfe8642076eefe7db15d2c6aa3f9b5"
        ),
        .target(
            name: "FireworkVideoIVSSupportDependencies",
            dependencies: [
                .product(name: "AmazonIVSPlayer", package: "AmazonIVSPlayer")
            ]
        )
    ]
)
