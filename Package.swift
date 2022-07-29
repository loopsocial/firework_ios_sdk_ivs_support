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
            url: "https://github.com/loopsocial/firework_ios_sdk_ivs_support/releases/download/v0.2.0/FireworkVideoIVSSupport.xcframework.zip",
            checksum: "f5f1ef55aeb78f212d949316b3ca9dcb941792f11e8e8ecc71aa0bc7379645b9"
        )
    ]
)
