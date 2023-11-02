//
//  ContentView.swift
//  side bar and scrolls
//
//  Created by Navami Ajay on 02/11/23.
//

import SwiftUI

struct ContentView: View {
    @State var isPresented: Bool = false
    var body: some View {
        
            
//                Text("Device size: \(geo.size.width), \(geo.size.height)")
                ZStack{
                    if(!isPresented){
                        NavigationStack {
                        Button(action: {
                            withAnimation{
                                isPresented.toggle()
                            }
                        }, label: {
                            Image(systemName: "contextualmenu.and.cursorarrow")
                                 .resizable()
                                 .aspectRatio(contentMode: .fit)
                                 .frame(width: 40, height: 40, alignment: .topLeading)
                                 .position(x: 50, y : 50)
                        })
                    }
                    
                        
                       
                        
     }
                    else{
                        sidenav()
                    }
        }
        
        
    }
    
    
}

#Preview {
    ContentView()
}
