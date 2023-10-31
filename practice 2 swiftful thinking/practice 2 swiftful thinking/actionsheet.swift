//
//  actionsheet.swift
//  practice 2 swiftful thinking
//
//  Created by Navami Ajay on 26/10/23.
//

import SwiftUI

struct actionsheet: View {
    @State var isShowActionButton: Bool = false
    var body: some View {
        Button("click me"){
            isShowActionButton.toggle()
        }
        .actionSheet(isPresented: $isShowActionButton, content: {
            ActionSheet(title: Text("TITLE"))
        })
    }
}

#Preview {
    actionsheet()
}
