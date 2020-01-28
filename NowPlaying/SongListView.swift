//
//  SongListView.swift
//  test
//
//  Created by Duane Bester on 1/27/20.
//  Copyright © 2020 Duane Bester. All rights reserved.
//

import SwiftUI

struct Song: Identifiable, Codable {
    let id: Int
    let name: String
    let artist: String
}

struct SongListView: View {
    let names = ["Bailamos", "Dance Monkey", "One in a million", "Waka Waka", "Macarena"]
    let artists = ["Duane", "Jared", "Zach", "Eduardo", "Miguel"]
    
    func getData(number: Int = 20) -> [Song] {
        var items: [Song] = []
        for index in 1...number {
            items.append(Song(id: index, name: names.randomElement()!, artist: artists.randomElement()!))
        }
        return items
    }
    
    var body: some View {
        List {
            ForEach(self.getData()) { song in
                HStack {
                    Image("\((song.id % 6) + 1)")
                        .resizable()
                        .frame(width: 50, height: 50)
                        .clipped()
                    
                    VStack(alignment: .leading) {
                        Text(song.name)
                        Text(song.artist).font(.caption)
                    }
                }
            }
        }
    }
}

struct SongListView_Previews: PreviewProvider {
    static var previews: some View {
        SongListView()
    }
}
