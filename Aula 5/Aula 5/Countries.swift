//
//  Countries.swift
//  Aula 5
//
//  Created by Student09 on 24/11/23.
//

import Foundation
import MapKit

struct Location: Identifiable {
    let id = UUID()
    let name: String
    let coordinate: CLLocationCoordinate2D
    let flag: String
    let description: String
}
