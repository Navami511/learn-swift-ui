//
//  lists.swift
//  practice 2 swiftful thinking
//
//  Created by Navami Ajay on 26/10/23.
//

import SwiftUI

struct lists: View {
    @State var fruits: [String] = ["apple", "mango", "banana", "strawberry"]
    @State var showAlert: Bool = false
    var body: some View {
        Section(header: Text("fruits")){
            List(0..<fruits.count, id: \.self){ index in
                Text(fruits[index].capitalized)
            }
            //.onDelete(perform: delete)
        }
        
        Button("Click Here"){
            showAlert.toggle()
        }
        .alert(isPresented: $showAlert, content: {
            //Alert(title: Text("WATCH OUT!!!"))
            Alert(title: Text("Attention"), message: Text("invalid input"), primaryButton: .destructive(Text("exit")), secondaryButton: .cancel())
        })
    }
    
//    func delete(indexSet: IndexSet){
//        fruits.remove(atOffsets: indexSet)
//    }
    }


#Preview {
    lists()
}
