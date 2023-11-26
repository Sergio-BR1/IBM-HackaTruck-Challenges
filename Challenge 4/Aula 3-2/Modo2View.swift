//
//  Modo2View.swift
//  Aula 3-2
//
//  Created by Student09 on 21/11/23.
//

import SwiftUI

struct Modo2View: View {
    @State var shouldPresentSheet = false
    var body: some View {
        VStack {
            Spacer()
            Text("E no rio não tem outro igual \n Só o Flamengo é Campeão Mundial")
            Spacer()
            VStack {
                
                
                Button{
                shouldPresentSheet.toggle()
                } label: {
                    RoundedRectangle(cornerRadius: 8).fill(.gray).frame(width: 150, height: 20)
                }
                .sheet(isPresented: $shouldPresentSheet) {
                    CampeaoView()
                }.frame(maxWidth: .infinity, alignment: .bottom)
            }
        }
    }
    
}

struct Modo2View_Previews: PreviewProvider {
    static var previews: some View {
        Modo2View()
    }
}
