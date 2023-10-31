//
//  ContentView.swift
//  form
//
//  Created by Navami Ajay on 24/10/23.
//

import SwiftUI

struct ContentView: View {
    @State private var firstName = ""
    @State private var lastName = ""
    @State private var birthday = Date()
    @State private var shouldSendNewsletter = false
    @State private var likes = false
    @State private var numberOfLikes = 1
    var body: some View {
        NavigationView{
            Form{
                Section(header: Text("Personal Information")){
                    TextField("First name", text: $firstName)
                    TextField("Last name", text: $lastName)
                    DatePicker("Date of Birth", selection: $birthday, displayedComponents: .date)
                }
                Section(header: Text("Actions")){
                    Toggle("Send Newsletter", isOn: $shouldSendNewsletter)
                    Toggle(isOn: .constant(false), label: {
                        Text("Email")
                    })
                    Toggle("likes", systemImage: "heart", isOn: $likes)
                    Stepper("Number of likes", value: $numberOfLikes, in: 1...100)
                    Text("You have clicked \(numberOfLikes) times")
                    NavigationLink("Visit Our Website", destination: Text("Website Link or View"))
                }
            }
            .navigationTitle("Account")
            .toolbar{
                ToolbarItemGroup(placement: .navigationBarTrailing){
                    Button{
                        hideKeyboard()
                    }label: {
                        Image(systemName: "keyboard.chevron.compact.down")
                    }
                   
                }
                
            }
            
        }
        
        
    }
}

#if canImport(UIKit)
extension View{
    func hideKeyboard(){
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
#endif

#Preview {
    ContentView()
}
