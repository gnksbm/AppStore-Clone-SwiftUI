//
//  SearchViewModel.swift
//  AppStoreSearchFeatureUI
//
//  Created by gnksbm on 2023/11/28.
//

import SwiftUI

import Domain

public final class SearchViewModel: ObservableObject {
    private let searchUseCase: SearchUseCase
    @Published var viewStatus: ViewStatus = .normal
    @Published var term = ""
    @Published var appList: [SearchedApp] = []
    @Published var suggestion: [String] = ["제노", "zeno"]
    @Published var discovery: [String] = []
    @Published var path = NavigationPath()
    
    public init(useCase: SearchUseCase) {
        self.searchUseCase = useCase
        Task {
            let result = await searchUseCase.fetchRandomWords()
            switch result {
            case .success(let strArr):
                self.discovery = strArr
            case .failure(let error):
                print(error.localizedDescription)
            }
        }
    }
    
    @MainActor
    func search() async {
        let result = await searchUseCase.search(term: term, limit: 5)
        switch result {
        case .success(let success):
            appList = success
            viewStatus = .showResult
        case .failure(let error):
            print(error)
        }
    }
    
    func searchTextTapped(_ text: String) {
        term = text
        Task {
            await search()
        }
    }
    
    func setCancel() {
        term = ""
        appList = []
        viewStatus = .normal
    }
    
    func setSearching() {
        viewStatus = .searching
    }
    
    func setNormal() {
        viewStatus = .normal
    }
}

extension SearchViewModel {
    enum ViewStatus {
        case normal, searching, showResult
    }
}
