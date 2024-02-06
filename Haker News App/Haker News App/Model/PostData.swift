//
//  PostData.swift
//  Haker News App
//
//  Created by Evgeniy Zelinskiy on 30.01.2024.
//

import Foundation

struct Results: Decodable {
    let hits: [Post]
}

struct Post: Decodable, Identifiable {
    var id: String { objectID }
    let objectID: String
    let title: String
    let url: String?
    let points: Int
    let author: String?
    let num_comments : Int?
}
