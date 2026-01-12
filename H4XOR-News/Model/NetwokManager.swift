//
//  NetwokManager.swift
//  H4XOR-News
//
//  Created by Antonio Hernández Santander on 10/01/26.
//

import Foundation

class NetwokManager: ObservableObject {
    
    @Published var posts = [Post] ()
    
    func fetchData() {
        if let url = URL(string: "http://hn.algolia.com/api/v1/search?tags=front_page") {
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: url) { data, response, error in
                if error == nil {
                    let decoder = JSONDecoder()
                    if let safeData = data {
                        do {
                            let result = try decoder.decode(PostData.self, from: safeData)
                            DispatchQueue.main.async {
                                self.posts  = result.hits                                
                            }
                        } catch {
                            print(error)
                        }
                    }
                }
            }
            task.resume()
        }
    }
}
