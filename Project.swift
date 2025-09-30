import ProjectDescription

let project = Project(
    name: "Log",
    targets: [
        .target(
            name: "Log",
            destinations: .iOS,
            product: .framework,
            bundleId: "dev.tuist.Log",
            infoPlist: .extendingDefault(
                with: [
                    "UILaunchScreen": [
                        "UIColorName": "",
                        "UIImageName": "",
                    ],
                ]
            ),
            buildableFolders: [
                "Log/Sources",
                "Log/Resources",
            ],
            dependencies: []
        ),
        .target(
            name: "LogTests",
            destinations: .iOS,
            product: .unitTests,
            bundleId: "dev.tuist.LogTests",
            infoPlist: .default,
            buildableFolders: [
                "Log/Tests"
            ],
            dependencies: [.target(name: "Log")]
        ),
    ]
)
