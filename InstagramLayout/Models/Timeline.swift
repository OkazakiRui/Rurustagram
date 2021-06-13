//
//  Timeline.swift
//  InstagramLayout
//
//  Created by 岡崎流依 on 2021/06/13.
//

import Foundation

struct Timeline:Identifiable {
    let id = UUID()
    let name: String
    let image: String
    let post: String
    let post_image: String
}
