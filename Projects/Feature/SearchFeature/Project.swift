import ProjectDescription
import ProjectDescriptionHelpers

let project = Project.makeProject(
    name: "SearchFeature",
    targetKinds: .feature,
    isTestable: true,
    dependencies: [
        .featureDependency
    ]
)
