//
//  RatingStarView.swift
//  SearchFeature
//
//  Created by gnksbm on 2023/11/28.
//  Copyright © 2023 https://github.com/gnksbm/AppStore-Clone-SwiftUI. All rights reserved.
//

import SwiftUI

public struct RatingStarView: View {
    let rating: Double
    
    public var body: some View {
        ratingStarView
            .foregroundStyle(.secondary)
    }
    
    @ViewBuilder
    var ratingStarView: some View {
        let fullStarCount = Int(rating)
        let hasHalfStar = rating.truncatingRemainder(dividingBy: 1) >= 0.5
        
        HStack(spacing: 0) {
            ForEach(1...5, id: \.self) { index in
                if index <= fullStarCount {
                    Image(systemName: "star.fill")
                        .resizable()
                } else if index == fullStarCount + 1 && hasHalfStar {
                    Image(systemName: "star.leadinghalf.filled")
                        .resizable()
                } else {
                    Image(systemName: "star")
                        .resizable()
                }
            }
            .scaledToFit()
        }
    }
}

struct RatingStarView_Previews: PreviewProvider {
    static var previews: some View {
        RatingStarView(rating: 2.5)
            .frame(width: 100, height: 25)
    }
}
