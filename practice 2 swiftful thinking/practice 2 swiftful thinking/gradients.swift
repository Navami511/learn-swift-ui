//
//  gradients.swift
//  practice 2 swiftful thinking
//
//  Created by Navami Ajay on 25/10/23.
//
//https://www.youtube.com/watch?v=Giq8jRnh0Gk&list=PLwvDm4VfkdphqETTBf-DdjCoAvhai1QpO&index=7&pp=iAQB icons video
import SwiftUI

struct gradients: View {
    var body: some View {
//        Shape with linear gradient
            LinearGradient(gradient: Gradient(colors: [Color.blue,Color.pink]), startPoint: .topLeading, endPoint: .bottom)
            .cornerRadius(25)
            .frame(width: 300, height: 280, alignment: .center)
        //use .overlay(LinearGradient(gradient: Gradient(colors: [Color.blue,Color.pink]), startPoint: .topLeading, endPoint: .bottom) for entire page gradient effect)
        RadialGradient(gradient: Gradient(colors: [Color.yellow,Color.orange]), center: .center, startRadius: 5, endRadius: 100)
            .frame(width: 200, height: 200)
            .clipShape(Circle())// to change shape of image
        //similarly angular gradient
        
    }
}

#Preview {
    gradients()
}
