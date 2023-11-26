//
//  SearchView.swift
//  aula3
//
//  Created by Student09 on 21/11/23.
//

import SwiftUI

struct SearchView: View {
    var body: some View {
        ZStack {
            Rectangle()
                .fill(Color.blue)
                .frame(width: 250, height: 250)
            Text("Hello, HackaTruck")
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
