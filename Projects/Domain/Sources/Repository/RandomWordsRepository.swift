//
//  RandomWordsRepository.swift
//  Domain
//
//  Created by gnksbm on 2023/11/29.
//  Copyright © 2023 https://github.com/gnksbm/AppStore-Clone-SwiftUI. All rights reserved.
//

import Foundation

public protocol RandomWordsRepository {
    func fetch(request: RandomWordRequestDTO) async -> Result<[String], Error>
}
