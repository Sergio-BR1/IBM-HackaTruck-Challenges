//
//  ViewModel.swift
//  Challenge API
//
//  Created by Student09 on 27/11/23.
//

import Foundation

class ViewModel: ObservableObject {
    
    @Published var personagens: [personagem] = []
    
    func fetch() {
        guard let url = URL(string: "https://valorant-api.com/v1/agents") else {
            return
        }
        let task = URLSession.shared.dataTask(with: url) { [weak self] data, _, error in
            guard let data = data, error == nil else {
                return
            }
            do {
                let parsed = try JSONDecoder().decode(API.self, from: data)
                
                DispatchQueue.main.async {
                    self?.personagens = parsed.data
                }
            }catch{
                print(error)
            }
        }
        task.resume()
    }
}
