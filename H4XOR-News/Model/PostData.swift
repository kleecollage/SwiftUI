//
//  PostData.swift
//  H4XOR-News
//
//  Created by Antonio Hernández Santander on 10/01/26.
//

import Foundation

struct PostData: Decodable {
    let hits: [Post]
}

struct Post: Decodable, Identifiable {
    var id: String {
        return objectID
    }
    let objectID: String
    let points: Int
    let title: String
    let url: String 
}
