import ProjectDescription
import ProjectDescriptionHelpers

let project = Project.framework(name: "BuildPackageKit", platform: .iOS, dependencies: [
    .project(target: "BuildPackageSupport", path: .relativeToManifest("../BuildPackageSupport"))
])
