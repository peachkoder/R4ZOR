//
//  FetchManager.swift
//  R4ZORSwiftUI
//
//  Created by doc on 02/12/2022.
//

import Foundation

class FetchManager: ObservableObject {
    
    @Published var posts = [PostData]()
    
    func fetchData() {
        
        if let url = URL(string: "https://hn.algolia.com/api/v1/search?tags=front_page") {
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: url) { (data, response, error) in
                if error == nil {
                    if let safeData = data {
                        let decoder = JSONDecoder()
                        do {
                            let results = try decoder.decode(Results.self, from: safeData)
                            DispatchQueue.main.async {
                                self.posts = results.hits
                            }
                        } catch {
                            print(error)
                            
                        }
                    }
                }
            }
            task.resume()
        }
        
    } //end func fetchData
}
