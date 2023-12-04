//
//  AppStoreApp.swift
//  AppStore
//
//  Created by gnksbm on 2023/11/28.
//

import SwiftUI

import Data
import Domain

import BaseTabFeature // Presentation

@main
struct AppStoreApp: App {
    init() {
        register()
    }
    
    var body: some Scene {
        WindowGroup {
            InitialView()
        }
    }
    
    private func register() {
        DIContainer.register(
            type: SearchRepository.self,
            DefaultSearchRepository(
                networkService: DefaultNetworkService()
            )
        )
        DIContainer.register(
            type: RandomWordsRepository.self,
            DefaultRandomWordsRepository(
                networkService: DefaultNetworkService()
            )
        )
    }
}
