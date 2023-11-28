import ProjectDescription
import ProjectDescriptionHelpers

let project = Project.makeProject(
    name: .appName,
    targetKinds: .app,
    dependencies: [
        .data,
        .baseTabFeature
    ]
)
