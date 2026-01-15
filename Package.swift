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
            url: "https://github.com/loopsocial/firework_ios_sdk_ivs_support/releases/download/v0.9.4-beta.1/FireworkVideoIVSSupport-v0.9.4-beta.1.xcframework.zip",
            checksum: "23754f8e7fd04d3b6202f3fcd91dc0b770c7856a230e27380e7de54dc142130b"
        ),
        .target(
            name: "FireworkVideoIVSSupportDependencies",
            dependencies: [
                .product(name: "AmazonIVSPlayer", package: "AmazonIVSPlayer")
            ]
        )
    ]
)
