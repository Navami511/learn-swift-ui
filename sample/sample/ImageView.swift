//
//  ImageView.swift
//  sample
//
//  Created by Navami Ajay on 03/11/23.
//

import SwiftUI

import SwiftUI

struct ImageView: View {
    @Binding var selectedSideMenuTab : Int
    @Binding var presentSideMenu: Bool
    let imageNames = ["img1", "img2", "img3", "img4", "img5"]
    let imgNames : [String] = ["Attica, Athens, Greece", "Budapest, Hongrie", "Windsor, United Kingdom", "Taj Mahal, Agra, India", "Mianyang, China"]
    
    var body: some View {
        
        NavigationStack{
            
            ScrollView {
                VStack{
                    
                    ForEach(0..<imageNames.count, id: \.self) { index in
                        let imageName = imageNames[index]
                        let imgName = imgNames[index]
                        
                        Image(imageName)
                            .resizable()
                            .frame(width: 350, height: 200)
                            .aspectRatio(contentMode: .fill)
                            .cornerRadius(10)
                        
                            .padding(25)
                            .overlay(Text(imgName).font(.caption).foregroundColor(.white).bold())
                    }
                }
            }
            .navigationTitle("Images")
            .navigationBarTitleDisplayMode(.automatic)
            .toolbar{
                ToolbarItemGroup(placement: .navigationBarTrailing){
                    Button{
                        presentSideMenu.toggle()
                    }label: {
                        Image(systemName: "list.bullet")
                    }
                   
                }
                
            }
        }
    }
}

#Preview {
    ImageView(selectedSideMenuTab: .constant(0), presentSideMenu: .constant(false))
}
