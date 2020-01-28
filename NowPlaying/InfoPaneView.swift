//
//  InfoPaneView.swift
//  test
//
//  Created by Duane Bester on 1/27/20.
//  Copyright © 2020 Duane Bester. All rights reserved.
//

import SwiftUI

struct InfoPaneView: View {
    var body: some View {
        VStack(alignment: .trailing, spacing: 0.0) {
            Spacer()
            ZStack {
                VisualEffectView()
                VStack {
                    NowPlayingView()
                    Divider()
                    TabIconsView()
                }
            }.frame(height: 160)
        }.edgesIgnoringSafeArea(.bottom)
    }
}

struct InfoPaneView_Previews: PreviewProvider {
    static var previews: some View {
        InfoPaneView()
    }
}
