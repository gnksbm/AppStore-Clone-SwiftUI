//
//  SearchView.swift
//  SearchFeature
//
//  Created by gnksbm on 2023/11/28.
//

import SwiftUI

import Domain

public struct SearchView: View {
    @StateObject private var searchViewModel: SearchViewModel
    
    private let columns = Array(repeating: GridItem(), count: 2)
    private let prompt = "게임, 앱, 스토리 등"
    @State private var isPresented: Bool = true
    
    public var body: some View {
        NavigationStack(path: $searchViewModel.path) {
            ScrollView {
                SearchSubView(searchViewModel: searchViewModel)
            }
            .padding(.trailing)
            .animation(.easeInOut, value: true)
            .navigationTitle("검색")
            .toolbar {
                if searchViewModel.viewStatus == .normal {
                    Button {
                    } label: {
                        Image(systemName: "person.crop.circle")
                            .imageScale(.large)
                    }
                }
            }
            .onChange(of: searchViewModel.term) { term in
                if term.isEmpty {
                    searchViewModel.setCancel()
                }
            }
        }
        .searchable(text: $searchViewModel.term,
                    prompt: Text(prompt))
        .onSubmit(of: .search) {
            Task {
                await searchViewModel.search()
            }
        }
        .searchSuggestions {
            if searchViewModel.viewStatus == .normal,
               !searchViewModel.term.isEmpty {
                ForEach(searchViewModel.suggestion, id: \.self) { sug in
                    Text(sug).searchCompletion(sug)
                }
            }
        }
//        .navigationDestination(for: SearchedApp.self) { appList in
//        }
    }
    
    public init(searchViewModel: SearchViewModel) {
        self._searchViewModel = StateObject(
            wrappedValue: searchViewModel
        )
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView(
            searchViewModel: SearchViewModel(
                useCase: DefaultSearchUseCase(
                    searchRepository: MockSearchRepository(),
                    randomWordsRepository: MockRandomWordsRepository()
                )
            )
        )
    }
}
