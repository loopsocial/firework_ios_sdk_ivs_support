// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "FireworkVideoIVSSupport",
    products: [
        .library(
            name: "FireworkVideoIVSSupport",
            targets: ["FireworkVideoIVSSupport"]
        )
    ],
    dependencies: [],
    targets: [
        .binaryTarget(
            name: "FireworkVideoIVSSupport",
            url: "https://github.com/loopsocial/firework_ios_sdk_ivs_support/releases/download/v0.1.0/FireworkVideoIVSSupport-v0.1.0.xcframework.zip",
            checksum: ""
        )
    ]
)
