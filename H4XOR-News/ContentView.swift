//
//  ContentView.swift
//  H4XOR-News
//
//  Created by Antonio Hernández Santander on 10/01/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List(posts) { post in
                Text(post.title)
            }
            .navigationBarTitle("H4XOR NEWS")
        }
    }
}

#Preview {
    ContentView()
}


struct Post: Identifiable {
    let id: String
    let title: String
}

let posts = [
    Post(id: "1", title: "Hello"),
    Post(id: "2", title: "Bonjour"),
    Post(id: "3", title: "Hola")
]
