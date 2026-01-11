//
//  ContentView.swift
//  KleecCard
//
//  Created by Antonio Hernández Santander on 10/01/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(.green)
                .ignoresSafeArea(edges: .all)
            VStack {
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundStyle(.tint)
                Text("Hello, world!")
            }
        }
    }
}

#Preview {
    ContentView()
}
