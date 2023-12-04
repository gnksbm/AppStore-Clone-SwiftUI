//
//  SearchDiscoveryView.swift
//  SearchFeature
//
//  Created by gnksbm on 2023/11/29.
//  Copyright © 2023 https://github.com/gnksbm/AppStore-Clone-SwiftUI. All rights reserved.
//

import SwiftUI

import Domain

struct SearchDiscoveryView: View {
    @StateObject var searchViewModel: SearchViewModel
    
    private let columns = Array(repeating: GridItem(), count: 2)
    
    var body: some View {
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
    }
}

struct SearchDiscoveryView_Previews: PreviewProvider {
    static var previews: some View {
        SearchDiscoveryView(
            searchViewModel: .forPreview
        )
    }
}
