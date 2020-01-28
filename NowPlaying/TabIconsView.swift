//
//  TabIconsView.swift
//  test
//
//  Created by Duane Bester on 1/27/20.
//  Copyright © 2020 Duane Bester. All rights reserved.
//

import SwiftUI

struct TabIconsView: View {
    var body: some View {
        HStack {
            Spacer()
            Image(systemName: "person.crop.circle")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 25, height: 25)
            Spacer()
            Image(systemName: "music.note.list")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 25, height: 25)
            Spacer()
            Image(systemName: "gear")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 25, height: 25)
            Spacer()
            Image(systemName: "square.and.pencil")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 25, height: 25)
            Spacer()
        }.padding(16)
    }
}

struct TabIconsView_Previews: PreviewProvider {
    static var previews: some View {
        TabIconsView()
    }
}
