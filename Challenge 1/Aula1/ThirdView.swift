//
//  ThirdView.swift
//  Aula1
//
//  Created by Student09 on 16/11/23.
//

import SwiftUI

struct ThirdView: View {
    @State private var nome: String = ""
    @State private var showingAlert = false
    @State private var msgAlert = Text("Você irá iniciar o desafio da aula agora").fontWeight(.light)
    var body: some View {
        VStack {
            Text("Bem vindo, \(nome)")
            TextField("Digite seu nome", text: $nome).padding().multilineTextAlignment(.center)
            
            ZStack{
                Image("caminhao").resizable().aspectRatio(contentMode: .fill).opacity(0.2)
                VStack {
                    Image("logo").resizable().aspectRatio(contentMode: .fit).frame(width: 200)
                    Image("truck").resizable().aspectRatio(contentMode: .fit).frame(width: 200)
                }
            }
            Button("Entrar") {
                showingAlert = true
            }
            .alert("Alerta!\n \(msgAlert)", isPresented: $showingAlert) {
                Button("Ok", role: .cancel) {}
            }
        }
    }
}

struct ThirdView_Previews: PreviewProvider {
    static var previews: some View {
        ThirdView()
    }
}
