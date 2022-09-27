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
            url: "https://github.com/loopsocial/firework_ios_sdk_ivs_support/releases/download/v0.3.0/FireworkVideoIVSSupport.xcframework.zip",
            checksum: "cf7ed886b8f53d3a8c8ba240636cb1ff686e12046a84f5f8b7ade0a9d3453083"
        )
    ]
)
