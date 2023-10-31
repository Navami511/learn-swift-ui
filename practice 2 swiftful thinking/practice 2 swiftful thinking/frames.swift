//
//  frames.swift
//  practice 2 swiftful thinking
//
//  Created by Navami Ajay on 25/10/23.
//

import SwiftUI

struct frames: View {
    @Environment(\.presentationMode) var presentationMode
    //@Binding  var showframesScreen: Bool
    var body: some View {
        ZStack{
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .background (Color.red)
                .frame(height: 100, alignment: .top)
                .background (Color.orange)
                .frame (width: 150)
                .background (Color.purple)
                .frame(maxWidth: .infinity,alignment: .leading)
                .background (Color.pink)
                .frame (height: 400)
                .background (Color.green)
                .frame (maxHeight: .infinity, alignment: .top)
                .background(Color.yellow)
            
            Button("back") {
                presentationMode.wrappedValue.dismiss() // to go back to inbox page
            }
        }
    }
}
                    
#Preview {
    frames()
 }
