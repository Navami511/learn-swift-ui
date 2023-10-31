//
//  grids.swift
//  practice 2 swiftful thinking
//
//  Created by Navami Ajay on 26/10/23.
//

import SwiftUI

struct grids: View {
    @State var title: String = ""
//    let columns: [GridItem] = [
//        GridItem(.fixed(30), spacing: nil, alignment: nil), // spacing here is the space between the columns
//        GridItem(.fixed(100), spacing: nil, alignment: nil),
//        GridItem(.fixed(30), spacing: nil, alignment: nil)
//        //GridItem(.fixed(100),  spacing:10)
//    ]
    
//    let columns: [GridItem] = [
//        GridItem(.flexible(), spacing: nil, alignment: .leading),
//        GridItem(.flexible(), spacing: nil, alignment: .trailing)
//        ]
//    let columns: [GridItem] = [
//            GridItem(.adaptive(minimum: 50, maximum: 300), spacing: nil, alignment: .leading),
//            GridItem(.adaptive(minimum: 50, maximum: 300), spacing: nil, alignment: .trailing)
//            ]
    
    let columns: [GridItem] = [
        GridItem(.flexible(), spacing: 6, alignment: .leading),
        GridItem(.flexible(), spacing: 6,alignment: .trailing),
        GridItem(.flexible(), spacing: 6,alignment: .trailing)
            ]
    
    var body: some View {
        ScrollView{
            Rectangle()
                .frame(height: 300)
                .foregroundColor(.white)
            Text("\(title)")
                .foregroundColor(.black)
            
            Button(action: {
                btnPress()
            }, label: {
//                HStack{
                    Image(systemName: "heart.fill")
                    Text("press")
//                }
//                .background(Color.yellow)
                    
            }
            )
            .frame(width: 150, height: 75)
            .background(.yellow)
            .cornerRadius(30)
            .font(.title)
        LazyVGrid(columns: columns,
                      alignment: .center,
            spacing: 10, // for horizontal space between rows
                  pinnedViews: [.sectionHeaders],
            content:  {
            Section(header: 
                        Text("Section 1")
                      .bold()
            ){
                ForEach(0..<50){ index in
                    Rectangle()
                        .frame(height: 150)
            }
               
                }
            }
      )  }
        
    }
    
    
    func btnPress(){
        title = "button pressed!!"
    }
}

                 
#Preview {
    grids()
}
