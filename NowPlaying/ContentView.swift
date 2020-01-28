//
//  ContentView.swift
//  test
//
//  Created by Duane Bester on 1/27/20.
//  Copyright © 2020 Duane Bester. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            ZStack {
                SongListView()
                InfoPaneView()
            }.navigationBarTitle("Music")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView().environment(\.colorScheme, .light)
            ContentView().environment(\.colorScheme, .dark)
        }
        
    }
}
