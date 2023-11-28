//
//  Feature.swift
//  ProjectDescriptionHelpers
//
//  Created by gnksbm on 2023/11/20.
//

import ProjectDescription

private let nameAttribute = Template.Attribute.required("name")

private let template = Template(
    description: "Framework 모듈 템플릿",
    attributes: [
        nameAttribute,
    ],
    items: [
        .file(path: projectPath(with: "Project.swift"), templatePath: "project.stencil"),
        .string(path: projectPath(with: "Sources/Temp.swift"), contents: "// "),
        .file(path: projectPath(with: "Tests/\(nameAttribute)Tests.swift"), templatePath: "tests.stencil"),
    ]
)

private func projectPath(with name: String) -> String {
    "Projects/\(nameAttribute)/\(name)"
}
