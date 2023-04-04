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
            url: "https://github.com/loopsocial/firework_ios_sdk_ivs_support/releases/download/v0.4.0/FireworkVideoIVSSupport-v0.4.0.xcframework.zip",
            checksum: "477568277138b338a6dbaf2bf0ebd3961ddce138a844279724cf0bf8ce004ff7"
        )
    ]
)
