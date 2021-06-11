//
//  IconView.swift
//  InstagramLayout
//
//  Created by 岡崎流依 on 2021/06/10.
//

import SwiftUI

struct IconView: View {
    let systemName: String
    var body: some View {
        Image(systemName: systemName)
            .font(.title)
            .padding(.leading, 2)
    }
}

