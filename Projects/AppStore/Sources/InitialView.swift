//
//  InitialView.swift
//  AppStore
//
//  Created by gnksbm on 2023/11/28.
//  Copyright © 2023 https://github.com/gnksbm/AppStore-Clone-SwiftUI. All rights reserved.
//

import SwiftUI
import BaseTabFeature

struct InitialView: View {
    var body: some View {
        BaseTabView(
            baseTabViewModel: BaseTabViewModel()
        )
    }
}

struct InitialView_Previews: PreviewProvider {
    static var previews: some View {
        InitialView()
    }
}
