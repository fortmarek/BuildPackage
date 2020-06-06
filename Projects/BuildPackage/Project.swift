import ProjectDescription
import ProjectDescriptionHelpers

let project = Project.app(
    name: "BuildPackage",
    packages: [
        .package(url: "https://github.com/ReactiveX/RxSwift.git", .branch("master"))
    ],
    platform: .iOS,
    dependencies: [
        .package(product: "RxSwift"),
        .project(target: "BuildPackageKit", path: .relativeToManifest("../BuildPackageKit"))
])
