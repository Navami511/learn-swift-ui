//
//  animations.swift
//  practice 2 swiftful thinking
//
//  Created by Navami Ajay on 26/10/23.
//

import SwiftUI

struct animations: View {
    var body: some View {
        NavigationStack{
            ScrollView{
                NavigationLink("next page!!!", destination: frames())
                Text("hello world")
                Text("hello world")
                Text("hello world")
                Text("hello world")
            }
            .navigationTitle("INBOX")
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarItems(
                leading:
                    HStack{
                        Image(systemName: "gear")
                        Image(systemName: "person")
                        
                    },
                trailing: NavigationLink(destination: frames(), label: {
                    Image(systemName: "heart")
                })
            )}
    }
}

#Preview {
    animations()
}
