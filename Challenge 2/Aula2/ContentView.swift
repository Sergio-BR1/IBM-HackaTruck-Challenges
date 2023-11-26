//
//  ContentView.swift
//  Aula2
//
//  Created by Student09 on 20/11/23.
//

import SwiftUI

struct ContentView: View {
    let bgApp = LinearGradient(
        colors: [Color.green],
        startPoint: .top, endPoint: .bottom)
    @State var bgColor: Color? = .white
    @State private var peso: Double = 0
    @State private var altura: Double = 0
    @State private var IMC: Double = 0
    @State private var categoria: String = ""
    var body: some View {
        ZStack {
            //bgApp
            VStack(alignment: .center) {
                Text("Calculadora de IMC").font(.title)
                Spacer().frame(height: 30)
                TextField("Digite seu peso em kg", value: $peso, format: .number).frame(width: 350).padding().overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.black, lineWidth: 1))
                Spacer().frame(height: 30)
                TextField("Digite sua altura em cm", value: $altura, format: .number).frame(width: 350).padding().overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.black, lineWidth: 1))
                Spacer().frame(height: 30)
                VStack{
                    Button(action: {
                        IMC = peso/(altura * altura)
                        if (IMC < 18.5) {
                            bgColor = Color("Baixo")
                            categoria = "Baixo peso"
                            
                        }
                        
                        else if(IMC < 25) {
                            bgColor = Color("Normal")
                            categoria = "Normal"
                        }
                        else if(IMC < 30) {
                            bgColor = Color("Sobrepeso")
                            categoria = "Sobrepeso"
                        }
                        
                        else {
                            bgColor = Color("Obesidade")
                            categoria = "Obesidade"
                        }
                    }) {
                        Text("Calcular").padding(.vertical, 15).padding(.horizontal, 20) .foregroundColor(.white).background(.blue).cornerRadius(10)
                    }
                    Spacer()
                    
                    Text(categoria).foregroundColor(.white).font(.system(size: 30))
                    
                    Spacer()
                    Image("tabela-IMC").resizable().frame(width: 450).aspectRatio(contentMode: .fit)
                }
            
            }
            
        } .background(bgColor ?? Color.white)
        //.ignoresSafeArea()
    }
} 

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
