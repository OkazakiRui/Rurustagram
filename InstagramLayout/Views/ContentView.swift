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
    
    var body: some View {
        TabView {
            Home()
                .tabItem {
                    IconView(systemName: "house")
                }
                .tag(Tab.Home)
            
            IconView(systemName: "magnifyingglass")
                .tabItem {
                    IconView(systemName: "magnifyingglass")
                }
                .tag(Tab.Search)
            
            IconView(systemName: "film")
                .tabItem {
                    IconView(systemName: "film")
                }
                .tag(Tab.Reels)
            
            IconView(systemName: "bag")
                .tabItem {
                    IconView(systemName: "bag")
                }
                .tag(Tab.Shop)
            
            IconView(systemName: "person")
                .tabItem {
                    IconView(systemName: "person")
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
