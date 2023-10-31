//
//  CreateShapes.swift
//  practice 2 swiftful thinking
//
//  Created by Navami Ajay on 25/10/23.
//

import SwiftUI

struct CreateShapes: View {
    var body: some View {
        Circle()
            //.trim(from:0.2, to: 1.0)
            .trim(from: 0.25, to: 1.0)
            .scale(0.75, anchor: .top)
            .fill(Color.yellow)
            
            //.stroke(Color.orange)//outline
            //.stroke(Color.orange, lineWidth: 10)
            .stroke(Color.orange, style: StrokeStyle(lineWidth: 10, lineCap: .butt, dash: [30]))
            //.trim(from:0.2, to: 1.0)
        
        Capsule(style: .continuous )
            .fill(Color.red)
            .frame(width: 100, height: 200,alignment: .center)
        Rectangle()
            .trim(from: 0.2, to: 0.8) // from and to should be values between 0.0 and 1.0 
        RoundedRectangle(cornerRadius: 50)
    }
}

#Preview {
    CreateShapes()
}
