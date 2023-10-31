//
//  scrollviews.swift
//  practice 2 swiftful thinking
//
//  Created by Navami Ajay on 26/10/23.
//

import SwiftUI

struct scrollviews: View {
    var body: some View {
        ScrollView{
            LazyVStack{
                ForEach(0..<100){ index in
                    ScrollView(.horizontal, showsIndicators: false, content: {
                        
                        LazyHStack{
                            ForEach(0..<100) { index in
                                RoundedRectangle(cornerRadius: 25.0)
                                    .frame(width: 200, height: 100)
                                //.fill(Color.white)
                                    .foregroundColor(.white)
                                    .shadow(color: .black, radius: 10)
                                    .padding()
                            }
                        }
                    }
                    )}
            }
        }
    }
}

#Preview {
    scrollviews()
}
