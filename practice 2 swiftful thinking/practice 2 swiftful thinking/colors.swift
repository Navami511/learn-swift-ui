//
//  colors.swift
//  practice 2 swiftful thinking
//
//  Created by Navami Ajay on 25/10/23.
//

import SwiftUI

struct colors: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 25.0)
            .frame(width: 250,height: 100)
            //.fill(Color(red: 255, green: 0, blue: 0))
            .foregroundColor(Color.init(red: 110, green: 75, blue: 0))
//        //to use a custom color,
            //Color(myColor) or
            //.foregroundColor(CustomColor.myColor) or
//            .background(CustomColor.myColor), where myColor has been defined in a struct in the swift file. the color maybe selected/ colorpicked from assets folder->properties->..appearance to customize color for dark and light themes.....input method to change to hexadecimal code for colours
            .shadow(color:.black.opacity(0.3), radius: 10,x: -10,y: -10)
    }
}

#Preview {
    colors()
}
