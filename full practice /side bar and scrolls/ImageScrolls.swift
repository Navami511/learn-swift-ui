//
//  ImageScrolls.swift
//  side bar and scrolls
//
//  Created by Navami Ajay on 02/11/23.
//

import SwiftUI

struct ImageScrolls: View {
    let images = ["img1", "img2", "img3", "img4", "img5"]
    var body: some View {
        NavigationStack{
            ScrollView {
               
                ForEach(0..<images.count) { img in
                    Image(images[img])
                            .resizable()
                            .frame(width: 350, height: 200)
                            .aspectRatio(contentMode: .fill)
                            .cornerRadius(10)
                            .shadow(radius: 15)
                            .padding(25)
                    }
                
                
            }
            .navigationTitle("Images")
            .navigationBarTitleDisplayMode(.automatic)
        }
    }
}

#Preview {
    ImageScrolls()
}
