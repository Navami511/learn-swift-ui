//
//  tabview.swift
//  practice 2 swiftful thinking
//
//  Created by Navami Ajay on 26/10/23.
//

import SwiftUI

struct tabview: View {
   
    var body: some View {
       
            TabView{
                
                Text("HOME TAB")
                    .tabItem{
    //                    Image(systemName: "house")
    //                    Text("Home")
                        Label("Home", systemImage: "house")
                    }
                Text("MENU TAB")
                    .tabItem{
    //                    Image(systemName: "doc")
    //                    Text("Menu")
                        Label("Menu", systemImage: "doc")
                    }
                

                }
        }
       
        }
    

#Preview {
    tabview()
}
