//
//  isPresentedType.swift
//  practice 2 swiftful thinking
//
//  Created by Navami Ajay on 26/10/23.
//

import SwiftUI

struct isPresentedType: View {
    @State var isShowcircle: Bool = false
    @State var isLoading: Bool = false
    var body: some View {
        VStack{
            Button("Shapes - \(isShowcircle.description)"){
                isShowcircle.toggle()
            }
            if isShowcircle{
                Circle()
                    .frame(width: 200, height: 200)
                    .foregroundColor(.blue)
            }
            else{
                Rectangle()
                    .frame(width: 200, height: 200)
                    .foregroundColor(.yellow)
            }
            
            //Spacer()
                
            Button("go....") {
                isLoading.toggle()
            }
            .frame(width: 100, height: 90)
            .background(.yellow)
            .cornerRadius(35.0)
            if isLoading{
                ProgressView()
            }
            Spacer()
            
        }
        
        
    }
}

#Preview {
    isPresentedType()
}
