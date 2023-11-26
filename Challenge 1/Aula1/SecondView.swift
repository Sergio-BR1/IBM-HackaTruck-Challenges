//
//  SecondView.swift
//  Aula1
//
//  Created by Student09 on 16/11/23.
//

import SwiftUI

struct SecondView: View {
    var body: some View {
        VStack{
            Image("caminhao").resizable()
            Spacer().frame(height: 50)
            ZStack {
                Image("caminhao").resizable().aspectRatio(contentMode: .fit).clipShape(Circle())
                Text("HackaTruck").foregroundColor(.blue).font(.title).position(x: 200, y: 60).bold()
                
                
            }
            ZStack {
                
                Rectangle().fill(.black).frame(width: 300, height: 200).position(x: 200, y: 180)
                HStack {
                    Text("Maker").foregroundColor(.yellow).font(.system(size: 23)).position(x: 165, y: 170)
                    Text("Space").foregroundColor(.red).font(.system(size: 23)).position(x: 35, y: 170)
                    
                }
            }
            
        }
    }
}

struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        SecondView()
    }
}
