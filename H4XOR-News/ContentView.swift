//
//  ContentView.swift
//  H4XOR-News
//
//  Created by Antonio Hernández Santander on 10/01/26.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var networkManager = NetwokManager()
    
    var body: some View {
        NavigationView {
            List(networkManager.posts) { post in
                HStack {
                    Text(String(post.points))
                    Text(post.title)
                }
             }
            .navigationBarTitle("H4XOR NEWS")
        }
        .onAppear {
            self.networkManager.fetchData()
        }
    }
}

#Preview {
    ContentView()
}
