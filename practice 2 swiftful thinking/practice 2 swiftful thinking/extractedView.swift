//
//  extractedView.swift
//  practice 2 swiftful thinking
//
//  Created by Navami Ajay on 26/10/23.
//

import SwiftUI

struct extractedView: View {
    @Binding var title: String
    @Binding var bgColor: Color
    var body: some View {
        Button(action: {
            title = "button clicked"
            bgColor = .yellow
        }, label: {
            Text("click!")
                .frame(width: 150, height: 100)
                .font(.largeTitle)
                .foregroundStyle(.black)
                .background(.orange)
                .padding()
                .cornerRadius(35.0)
        })
    }
}

#Preview {
    extractedView(title: .constant("title"), bgColor: .constant(.yellow))
}
