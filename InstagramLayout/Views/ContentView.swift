//
//  ContentView.swift
//  InstagramLayout
//
//  Created by 岡崎流依 on 2021/06/10.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            Home()
                .tabItem {
                    IconView(systemName: "house")
                }
            IconView(systemName: "magnifyingglass")
                .tabItem {
                    IconView(systemName: "magnifyingglass")
                }
            IconView(systemName: "plus.app")
                .tabItem {
                    IconView(systemName: "plus.app")
                }
            IconView(systemName: "heart")
                .tabItem {
                    IconView(systemName: "heart")
                }
            IconView(systemName: "person")
                .tabItem {
                    IconView(systemName: "person")
                }
        }
        .accentColor(.black)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
