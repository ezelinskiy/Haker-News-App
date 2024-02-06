//
//  PostsManager.swift
//  Haker News App
//
//  Created by Evgeniy Zelinskiy on 30.01.2024.
//

import Foundation

class PostsManager: ObservableObject {
    @Published var posts = [Post]()
    
    func fetchData() {
        if let url = URL(string: "http://hn.algolia.com/api/v1/search?tags=front_page") {
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: url) { data, response, error in
                if error == nil {
                    if let safeData = data {
                        do {
                            let decoder = JSONDecoder()
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
    }
}
