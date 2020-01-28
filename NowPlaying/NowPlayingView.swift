//
//  NowPlayingView.swift
//  test
//
//  Created by Duane Bester on 1/27/20.
//  Copyright © 2020 Duane Bester. All rights reserved.
//

import SwiftUI

struct NowPlayingView: View {
    var body: some View {
        HStack(spacing: 16) {
            Spacer()
            ZStack {
                Rectangle()
                    .fill(Color.primary)
                    .frame(width: 50, height: 50)
                    .cornerRadius(5)
                    .shadow(radius: 5)
                Image(systemName: "music.note")
                    .foregroundColor(Color.secondary)
                    .padding(20)
                    .colorInvert()
            }
            Text("Not Playing")
            Spacer()
            Image(systemName: "play.fill")
            Image(systemName: "forward.fill")
            Spacer()
        }.padding(6)
    }
}

struct NowPlayingView_Previews: PreviewProvider {
    static var previews: some View {
        NowPlayingView()
    }
}
