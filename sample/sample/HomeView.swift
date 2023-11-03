//
//  HomeView.swift
//  sample
//
//  Created by Navami Ajay on 03/11/23.
//

import SwiftUI

struct HomeView: View {
    @Binding var presentSideMenu: Bool
    var body: some View {
        VStack{
                 HStack{
                     Button{
                         presentSideMenu.toggle()
                     } label: {
                         Image("dots")
                             .resizable()
                             .frame(width: 22, height: 22)
                     }
                     Spacer()
                 }
                 
                 Spacer()
                 Text("Home View")
                 Spacer()
             }
             .padding(.horizontal, 24)
    }
}

#Preview {
    HomeView(presentSideMenu: .constant(true))
}
