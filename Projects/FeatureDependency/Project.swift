import ProjectDescription
import ProjectDescriptionHelpers

let project = Project.makeProject(
    name: "FeatureDependency",
    targetKinds: .framework,
    dependencies: [
        .domain,
    ]
)
