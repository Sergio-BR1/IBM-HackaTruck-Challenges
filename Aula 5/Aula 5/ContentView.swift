//
//  ContentView.swift
//  Aula 5
//
//  Created by Student09 on 24/11/23.
//

import SwiftUI
import MapKit

struct ContentView: View {
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: -14.2400732, longitude: -53.1805017), span: MKCoordinateSpan(latitudeDelta: 40, longitudeDelta: 35))
    @State var country: String = "Brasil"
    @State var atualLocation: Location = arrayLocations[0]
    var body: some View {
        NavigationStack {
            VStack {
                Text("World Map").fontWeight(.bold).font(.system(size: 25))
                Text(country).font(.system(size: 20))
                Map(coordinateRegion: $region, annotationItems: arrayLocations){
                    MapAnnotation(coordinate: $0.coordinate) {
                        ZStack {

                            NavigationLink (destination: InformationVIew(x: atualLocation)){
                                Circle().fill(.black)
                                    .frame(width: 20, height: 20)
                            }
                        }
                    }
                    
                    
                }   .frame(width: 400, height: 570)
                    .padding(.bottom, 50)
                
                HStack{
                    ScrollView(.horizontal) {
                        HStack{
                            ForEach (arrayLocations){ location in
                                Button {
                                    region.center = location.coordinate
                                    country = location.name
                                    region.span.latitudeDelta = 40
                                    atualLocation = location
                                } label : {
                                    
                                    Text(location.name).foregroundColor(.white).font(.system(size: 15))
                                }.padding(.horizontal, 20).padding(.vertical, 20).background(.blue).cornerRadius(10)
                            }
                        }
                    }
                }
            }
        }
    }
    
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
