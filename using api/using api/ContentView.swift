//
//  ContentView.swift
//  using api
//
//  Created by Navami Ajay on 27/10/23.
//

import SwiftUI

struct ContentView: View {
    @State private var foodName : String = ""
    @State private var isPresented: Bool = false
    //@Binding var data: Food

    @State var foods = [Food]()
    @State var query: String = ""


    
    func getNutrition() {
        let query = /*"1lb brisket and fries"*/ foodName
        NetworkManager().loadData(query: query) { (foods) in
            self.foods = foods
        }
    }

        
        
    var body: some View {
        
        VStack {
                TextField("Enter the Food Item", text: $foodName)
                     .frame(width: 300, height: 33, alignment: .center)
                     .border(Color.black)
                     .foregroundColor(Color.black)
                     .textFieldStyle(RoundedBorderTextFieldStyle())
            
            Button(action: {
           isPresented = false
                getNutrition()
                
                
            }, label: {
                Text("Search")
            })
            .frame(width: 100, height: 34, alignment: .center)
            .background(.yellow)
            .buttonStyle(.plain)
            .containerShape(.capsule)
           
                
        }
        
    }
}

//#Preview {
//    ContentView(data: .constant(Food(from: JSONDecoder as! Decoder)))
//}
