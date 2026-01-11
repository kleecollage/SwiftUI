//
//  InfoView.swift
//  KleecCard
//
//  Created by Antonio Hernández Santander on 10/01/26.
//

import SwiftUI

struct InfoView: View {
    let text: String
    let imageName: String
    
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .fill(Color("Info Color"))
            .frame(height: 50)
            .overlay(HStack {
                Image(systemName: imageName)
                    .foregroundColor(.green)
                Text(text)
            })
            .padding(.all)
    }
}


#Preview(traits: .sizeThatFitsLayout) {
    InfoView(text: "01 800 999 8080", imageName: "phone")
}
