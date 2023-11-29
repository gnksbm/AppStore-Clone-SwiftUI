//
//  SearchSubView.swift
//  SearchFeature
//
//  Created by gnksbm on 2023/11/29.
//  Copyright © 2023 https://github.com/gnksbm/AppStore-Clone-SwiftUI. All rights reserved.
//

import SwiftUI

import Domain

struct SearchSubView: View {
    @StateObject var searchViewModel: SearchViewModel
    
    private let columns = Array(repeating: GridItem(), count: 2)
    
    @State private var visibility: Visibility = .visible
    
    @Environment(\.isSearching) private var isSearching
    
    var body: some View {
        Group {
            switch searchViewModel.viewStatus {
            case .normal:
                VStack(alignment: .leading) {
                    Text("새로운 발견")
                        .bold()
                        .font(.title2)
                        .padding(.leading)
                    LazyVGrid(columns: columns) {
                        ForEach(searchViewModel.discovery, id: \.self) { dis in
                            VStack(alignment: .leading) {
                                Button {
                                    searchViewModel.searchTextTapped(dis)
                                } label: {
                                    Image(systemName: "magnifyingglass")
                                    Text(dis)
                                }
                                Divider()
                            }
                            .padding(.leading)
                        }
                    }
                }
            case .showResult:
                SearchResultView(appList: searchViewModel.appList)
            case .searching:
                EmptyView()
            }
        }
        .onChange(of: isSearching) { isSearching in
            isSearching ? searchViewModel.setSearching() : searchViewModel.setNormal()
        }
    }

}

struct SearchSubView_Previews: PreviewProvider {
    static var previews: some View {
        SearchSubView(
            searchViewModel: SearchViewModel(
                useCase: DefaultSearchUseCase(
                    searchRepository: MockSearchRepository(),
                    randomWordsRepository: MockRandomWordsRepository()
                )
            )
        )
    }
}
