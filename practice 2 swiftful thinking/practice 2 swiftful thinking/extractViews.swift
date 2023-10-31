//
//  extractViews.swift
//  practice 2 swiftful thinking
//
//  Created by Navami Ajay on 26/10/23.
//

import SwiftUI

struct extractViews: View {
    @State var title: String = "hi"
    @State var bgColor: Color = Color.pink
    var body: some View {
        ZStack{
            bgColor.edgesIgnoringSafeArea(.all)
            VStack{
                Text("\(title)")
                    .foregroundStyle(.white)
                extractedView(title: $title, bgColor: $bgColor)
            }
            
        }
        
    }
}

#Preview {
    extractViews()
}
