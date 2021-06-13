//
//  Home.swift
//  InstagramLayout
//
//  Created by 岡崎流依 on 2021/06/10.
//

import SwiftUI

struct Home: View {
    var body: some View {
        NavigationView {
            
            ScrollView {
                VStack {
                    StoryView()
                        .padding(.top, -30)
                    TimelineView()
                }
                
            }
            //                .navigationBarTitle(
            //                    Text("Rurustgram"),
            //                    displayMode: .inline
            //                )
            .navigationBarItems(
                leading: Text("Rurustgram")
                    .font(.custom("Times-Roman", size: 44.0))
                    .padding(.top, -10)
                ,
                trailing: HStack {
                    IconView(systemName: "plus.app")
                    IconView(systemName: "heart")
                    IconView(systemName: "plus.message")
                }
//                .padding(.top, 20)
            )
        }
    }
}


struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
