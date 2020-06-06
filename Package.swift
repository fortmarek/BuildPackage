// swift-tools-version:4.2
import PackageDescription

let package = Package(
    name: "BuildPackage",
    products: [
        .library(name: "DangerDepsBuildPackage", type: .dynamic, targets: ["DangerDependencies"]),
    ],
    dependencies: [
      .package(url: "https://github.com/danger/danger-swift.git", .upToNextMajor(from: "2.0.6")),
    ],
    targets: [
        // This is just an arbitrary Swift file in our app, that has
        // no dependencies outside of Foundation, the dependencies section
        // ensures that the library for Danger gets build also.
         .target(name: "DangerDependencies", dependencies: ["Danger"], path: "Projects/BuildPackage/Sources", sources: ["Test.swift"]),
    ]
)

