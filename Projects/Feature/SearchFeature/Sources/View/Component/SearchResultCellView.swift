//
//  SearchResultCellView.swift
//  SearchFeature
//
//  Created by gnksbm on 2023/11/28.
//  Copyright © 2023 https://github.com/gnksbm/AppStore-Clone-SwiftUI. All rights reserved.
//

import SwiftUI

import Domain
import FeatureDependency

public struct SearchResultCellView: View {
    let app: SearchedApp
    let columns = Array(repeating: GridItem(), count: 3)
    
    public var body: some View {
        VStack(alignment: .leading) {
            HStack {
                ImageWithURLView(url: app.iconURL)
                    .frame(width: 50, height: 50)
                    .cornerRadius(5)
                VStack(alignment: .leading) {
                    Text(app.title)
                        .font(.headline)
                        .lineLimit(1)
                    Text(app.category)
                        .font(.subheadline)
                        .lineLimit(1)
                }
                Spacer()
                Button {
                } label: {
                    Text("받기")
                        .padding(.horizontal)
                }
                .buttonBorderShape(.capsule)
                .buttonStyle(.bordered)
            }
            .padding(.bottom, 10)
            LazyVGrid(columns: columns) {
                HStack {
                    RatingStarView(rating: app.rating)
                        .frame(maxHeight: 15)
                    Text(app.ratingCount.ratingSummaryString)
                }
                HStack {
                    Image(systemName: "person.crop.square")
                    Text(app.developer)
                        .lineLimit(1)
                }
            }
            .font(.footnote)
            .bold()
            HStack {
                ForEach(app.screenshotList.prefix(upTo: 3), id: \.self) {
                    ImageWithURLView(url: $0)
                        .cornerRadius(10)
                }
            }
        }
    }
}

struct SearchResultCellView_Previews: PreviewProvider {
    static var previews: some View {
        SearchResultCellView(app: .sampleDatas[0])
    }
}
