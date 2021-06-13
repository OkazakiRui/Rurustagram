//
//  ContentView.swift
//  InstagramLayout
//
//  Created by 岡崎流依 on 2021/06/10.
//

import SwiftUI

struct ContentView: View {
    enum Tab {
        case Home
        case Search
        case Reels
        case Shop
        case Mypage
    }
    @State private var select: Tab = .Home
    
    var body: some View {
        TabView(selection: $select) {
            Home()
                .tabItem {
                    IconView(systemName: select == .Home ? "house.fill" : "house")
                }
                .tag(Tab.Home)
            
            IconView(systemName: "magnifyingglass")
                .tabItem {
                    IconView(systemName: "magnifyingglass")
                }
                .tag(Tab.Search)
            
            IconView(systemName: "film")
                .tabItem {
                    IconView(systemName: select == .Reels ? "film.fill" : "film" )
                }
                .tag(Tab.Reels)
            
            IconView(systemName: "bag")
                .tabItem {
                    IconView(systemName: select == .Shop ? "bag.fill" : "bag")
                }
                .tag(Tab.Shop)
            
            IconView(systemName: "person")
                .tabItem {
                    IconView(systemName: select == .Mypage ? "person.fill" : "person")
                }
                .tag(Tab.Mypage)
        }
        .accentColor(.black)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
