//
//  SearchResultView.swift
//  SearchFeature
//
//  Created by gnksbm on 2023/11/28.
//  Copyright © 2023 https://github.com/gnksbm/AppStore-Clone-SwiftUI. All rights reserved.
//

import SwiftUI

import Domain

public struct SearchResultView: View {
    let appList: [SearchedApp]
    public var body: some View {
        ScrollView {
            ForEach(appList, id: \.title) { app in
                SearchResultCellView(app: app)
                    .padding(.vertical)
            }
            .padding(.horizontal)
        }
        .animation(.easeInOut, value: true)
    }
}

struct SearchResultView_Previews: PreviewProvider {
    static var previews: some View {
        SearchResultView(appList: SearchedApp.sampleDatas)
    }
}
