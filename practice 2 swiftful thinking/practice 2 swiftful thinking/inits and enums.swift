//
//  inits abd enums.swift
//  practice 2 swiftful thinking
//
//  Created by Navami Ajay on 26/10/23.
//

import SwiftUI

struct inits_and_enums: View {
    enum Fruits{
        case apples
        case oranges
    }
    //variables for vstack, commenting them so that init can be done for hstack alone
   let bgColor : Color
//    let first_text : String
    let title : String
    var count: Int
    //using init
//    init(title:String, count: Int){
//        self.title = title
//        self.count = count
//        if(title == "APPLES"){
//            self.bgColor = .red
//        }
//        else{
//            self.bgColor = .blue
//        }
//    }
    
    // usong enums
    init(count: Int, fruit: Fruits, title: String){
        self.count = count
        
        if fruit == .apples{
            self.bgColor = .red
            self.title = title
            self.count = count
        }
        else{
            self.bgColor = .orange
            self.count = count
            self.title = title
        }
    }
    var body: some View {
//        VStack{
//            Text("\(first_text)")
//            Text("hi there!")
//        }
//        .frame(width: 150, height: 150)
//        .background(bgColor)
//        .cornerRadius(16.0)
//        .shadow(color: .yellow, radius: 10)
        HStack{
            Text("\(title)")
            Text("\(count)")
        }
        .frame(minWidth: 200, maxHeight: 150)
        .background(bgColor)
        .cornerRadius(25)
    }
}

#Preview {
   // inits_and_enums(title: "APPLES", count: 10)
    inits_and_enums(count: 100, fruit: .oranges, title: "Oranges")
}
