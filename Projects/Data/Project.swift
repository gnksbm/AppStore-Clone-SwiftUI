import ProjectDescription
import ProjectDescriptionHelpers

let project = Project.makeProject(
    name: "Data",
    targetKinds: .framework,
    dependencies: [
        .domain,
    ]
)
