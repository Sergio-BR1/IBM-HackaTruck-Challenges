//
//  HomeView.swift
//  aula3
//
//  Created by Student09 on 21/11/23.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack {
            List( 1..<50 ) {
               
                            Text("Item \($0)")

            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
