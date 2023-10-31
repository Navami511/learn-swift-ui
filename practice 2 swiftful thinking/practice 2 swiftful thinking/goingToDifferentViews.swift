//
//  goingToDifferentViews.swift
//  practice 2 swiftful thinking
//
//  Created by Navami Ajay on 27/10/23.
//

import SwiftUI

struct goingToDifferentViews: View {
    @State private var showframesScreen: Bool = false
    var body: some View {
        Button("Click to go next page"){
            showframesScreen.toggle()
        }
        //method 1 - using .sheet  ->  a sheet pops up from the bottom of the screen
//        .sheet(isPresented: $showTabView, content: {
//            tabview()
//        })
        //method 2 - transition
//        if(showframesScreen){
//            frames()
//                .transition(.move(edge: .bottom))
//                .animation(.spring())
//                //.padding(.top, 150)
//        }
        //method 3 - animation
//        frames(showframesScreen: $showframesScreen)
    }
}

#Preview {
    goingToDifferentViews()
}
