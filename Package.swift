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
            url: "https://github.com/loopsocial/firework_ios_sdk_ivs_support/releases/download/v0.9.7/FireworkVideoIVSSupport-v0.9.7.xcframework.zip",
            checksum: "9bd219d7c67cae18a7d513954a420e7b7d92995a8658ed893e407583b316c5ae"
        ),
        .target(
            name: "FireworkVideoIVSSupportDependencies",
            dependencies: [
                .product(name: "AmazonIVSPlayer", package: "AmazonIVSPlayer")
            ]
        )
    ]
)
