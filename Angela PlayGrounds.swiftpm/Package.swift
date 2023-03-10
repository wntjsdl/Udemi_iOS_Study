// swift-tools-version: 5.6

// WARNING:
// This file is automatically generated.
// Do not edit it by hand because the contents will be replaced.

import PackageDescription
import AppleProductTypes

let package = Package(
    name: "Angela PlayGrounds",
    platforms: [
        .iOS("15.2")
    ],
    products: [
        .iOSApplication(
            name: "Angela PlayGrounds",
            targets: ["AppModule"],
            bundleIdentifier: "com.sunny.Angela-PlayGrounds",
            teamIdentifier: "E6JQ2JA658",
            displayVersion: "1.0",
            bundleVersion: "1",
            appIcon: .placeholder(icon: .images),
            accentColor: .presetColor(.purple),
            supportedDeviceFamilies: [
                .pad,
                .phone
            ],
            supportedInterfaceOrientations: [
                .portrait,
                .landscapeRight,
                .landscapeLeft,
                .portraitUpsideDown(.when(deviceFamilies: [.pad]))
            ]
        )
    ],
    targets: [
        .executableTarget(
            name: "AppModule",
            path: "."
        )
    ]
)
