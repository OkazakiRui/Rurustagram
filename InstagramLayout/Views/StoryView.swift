//
//  StoryView.swift
//  InstagramLayout
//
//  Created by 岡崎流依 on 2021/06/10.
//

import SwiftUI

struct StoryView: View {
    let storys:[Story] = [
        Story(name: "user00000", image: "user00000"),
        Story(name: "user00001", image: "user00001"),
        Story(name: "user00002", image: "user00002"),
        Story(name: "user00003", image: "user00003"),
        Story(name: "user00004", image: "user00004"),
        Story(name: "user00005", image: "user00005"),
        Story(name: "user00006", image: "user00006"),
        Story(name: "user00007", image: "user00007"),
        Story(name: "user00008", image: "user00008")
    ]
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false, content: {
            HStack {
                ForEach(storys) { story in
                    VStack {
                        ZStack {
                            Image(story.image)
                                .resizable()
                                .overlay(
                                    Circle()
                                        .stroke(Color.white, lineWidth: 10))
                                .overlay(
                                    Circle()
                                        .stroke(LinearGradient(gradient: Gradient(colors: [.yellow, .red, .purple]), startPoint: .bottomLeading, endPoint: .topTrailing), lineWidth: 5))
                                .frame(width: 75, height: 75)
                                .clipShape(Circle())
                        }
                        Text(story.name)
                            .font(.custom("String", size: 12.0))
                            
                            
                            
                    }
                }
                .padding(.leading, 20)
            }
            .padding(.trailing, 20)
        })
    }
}

struct StoryView_Previews: PreviewProvider {
    static var previews: some View {
        StoryView()
            .previewLayout(.fixed(width: 375, height: 90))
    }
}
