//
//  InformationVIew.swift
//  Aula 5
//
//  Created by Student09 on 24/11/23.
//

import SwiftUI
import MapKit

struct InformationVIew: View {
    var x: Location
    var body: some View {
        VStack {
            Spacer()
            Text(x.name)
            AsyncImage(url: URL(string: x.flag)) { image in
                
                image
                    .resizable().aspectRatio(contentMode: .fit).frame(width: 50, height: 50)
                
            } placeholder: {
                ProgressView()
            }
            Spacer()
            Spacer()
            Spacer()
            
            HStack{
                Text(x.description).frame(width: 350)
            }
            Spacer()
        }
    }
}

struct InformationVIew_Previews: PreviewProvider {
    static var previews: some View {
        InformationVIew(x: Location(name: "Brasil", coordinate: CLLocationCoordinate2D(latitude: -14.3617, longitude: -57.3923), flag:"https://i.pinimg.com/736x/e4/03/c4/e403c4447a3bd8940459ae4f50856bed.jpg" , description: "O Brasil, um vasto país sul-americano, estende-se da Bacia Amazônica, no norte, até os vinhedos e as gigantescas Cataratas do Iguaçu, no sul. O Rio de Janeiro, simbolizado pela sua estátua de 38 metros de altura do Cristo Redentor, situada no topo do Corcovado, é famoso pelas movimentadas praias de Copacabana e Ipanema, bem como pelo imenso e animado Carnaval, com desfiles de carros alegóricos, fantasias extravagantes e samba."))
    }
}
