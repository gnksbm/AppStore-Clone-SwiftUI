//
//  ImageWithURLView.swift
//  SearchFeature
//
//  Created by gnksbm on 2023/11/28.
//  Copyright © 2023 https://github.com/gnksbm/AppStore-Clone-SwiftUI. All rights reserved.
//

import SwiftUI

import Domain

public struct ImageWithURLView: View {
    let url: URL
    
    @State private var uiImage: UIImage?
    
    public var body: some View {
        VStack {
            if let uiImage {
                Image(uiImage: uiImage)
                    .resizable()
                    .scaledToFit()
            }
        }
        .task {
            guard let (data, _) = try? await URLSession.shared.data(from: url) else { return }
            uiImage = UIImage(data: data)
        }
    }
}

struct ImageWithURLView_Previews: PreviewProvider {
    static var previews: some View {
        ImageWithURLView(url: SearchedApp.sampleDatas[0].iconURL)
    }
}
