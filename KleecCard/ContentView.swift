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
            Color(UIColor(red: 0.17, green: 0.23, blue: 0.28, alpha: 1.00))
                .ignoresSafeArea(edges: .all)
            VStack {
                Image("Antonio")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150, height: 150)
                    .clipShape(Circle())
                    .overlay(
                        Circle().stroke(Color.white, lineWidth: 5)
                    )
                Text("Antonio Hernández Santander")
                    .font(Font.custom("Orbitron-Regular", size: 40))
                    .bold()
                    .foregroundColor(.white)
                Text("IOS Developer")
                    .foregroundColor(.white)
                    .font(.system(size: 25))
                Divider()
                InfoView(text: "55 618 719-88", imageName: "phone.fill")
                InfoView(text: "klee.collage@gmail.com", imageName: "envelope.fill")
            }
        }
    }
}

#Preview {
    ContentView()
}

