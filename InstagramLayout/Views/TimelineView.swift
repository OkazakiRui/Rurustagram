//
//  TimelineView.swift
//  InstagramLayout
//
//  Created by 岡崎流依 on 2021/06/13.
//

import SwiftUI

struct TimelineView: View {
    
    let timelines:[Timeline] = [
        Timeline(name: "user00000", image: "user00000" , post: "This is post content", post_image: "sea1" ),
        Timeline(name: "user00001", image: "user00001" , post: "This is post content", post_image: "sea1" ),
        Timeline(name: "user00002", image: "user00002" , post: "This is post content", post_image: "sea1" ),
        Timeline(name: "user00003", image: "user00003" , post: "This is post content", post_image: "sea1" ),
        Timeline(name: "user00004", image: "user00004" , post: "This is post content", post_image: "sea1" ),
        Timeline(name: "user00005", image: "user00005" , post: "This is post content", post_image: "sea1" ),
        Timeline(name: "user00006", image: "user00006" , post: "This is post content", post_image: "sea1" ),
        Timeline(name: "user00007", image: "user00007" , post: "This is post content", post_image: "sea1" ),
        Timeline(name: "user00008", image: "user00008" , post: "This is post content", post_image: "sea1" ),
    ]
    
    var body: some View {
        VStack {
            ForEach(self.timelines) { timeline in
                VStack {
                    HStack {
                        Image(timeline.image)
                            .resizable()
                            .clipShape(Circle())
                            .frame(width: 40, height: 40)
                        Text(timeline.name)
                        Spacer()
                        Image(systemName: "ellipsis")
                    }
                    .padding(.horizontal, 10)
                    .padding(.vertical, 6)
                    
                    Image(timeline.post_image)
                        .resizable()
                        .aspectRatio(1, contentMode: .fill)
                    
                    HStack {
                        IconView(systemName: "heart")
                        IconView(systemName: "message")
                            .rotation3DEffect(.degrees(180), axis: (x: 0, y: 1, z: 0))
                        IconView(systemName: "paperplane")
                        Spacer()
                        IconView(systemName: "bookmark")
                    }
                    .padding(.horizontal, 10)
                    .padding(.vertical, 6)
                    
                    
                    Group {
                        Text("\(timeline.name)  ").fontWeight(.bold) +
                            Text(timeline.post)
                    }
                    .padding(.horizontal, 10)
                    .frame(width: UIScreen.main.bounds.width, height: nil, alignment: .leading)
                    
                    Divider()
                }
            }
        }
    }
}

struct TimelineView_Previews: PreviewProvider {
    static var previews: some View {
        TimelineView()
    }
}
