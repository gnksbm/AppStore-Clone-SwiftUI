//
//  BaseTabView.swift
//  BaseTabFeature
//
//  Created by gnksbm on 2023/11/28.
//  Copyright © 2023 https://github.com/gnksbm/AppStore-Clone-SwiftUI. All rights reserved.
//

import SwiftUI

import SearchFeature

public struct BaseTabView: View {
    @StateObject private var baseTabViewModel: BaseTabViewModel
    
    public var body: some View {
        TabView {
            
        }
    }
    
    public init(baseTabViewModel: BaseTabViewModel) {
        self._baseTabViewModel = StateObject(
            wrappedValue: baseTabViewModel
        )
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        BaseTabView(baseTabViewModel: BaseTabViewModel())
    }
}
