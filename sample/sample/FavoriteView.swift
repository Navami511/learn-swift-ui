//
//  FavoriteView.swift
//  sample
//
//  Created by Navami Ajay on 03/11/23.
//

import SwiftUI

struct FavoriteView: View {
    @Binding var presentSideMenu: Bool
    var body: some View {
        Text("Favourite view")
        //Spacer()
//        Rectangle()
//            .frame(width: .infinity, height: 300 )
//            .padding(.top, 25)
//            .padding(.bottom, 25)
//            .
        
        Spacer()
    }
   
}

#Preview {
    FavoriteView(presentSideMenu: .constant(false))
}
