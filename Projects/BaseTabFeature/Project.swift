import ProjectDescription
import ProjectDescriptionHelpers

let project = Project.makeProject(
    name: "BaseTabFeature",
    targetKinds: .framework,
    dependencies: .Feature.allCases.map({ $0.dependency })
)
