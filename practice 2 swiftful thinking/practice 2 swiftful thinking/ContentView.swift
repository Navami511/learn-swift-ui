//
//  ContentView.swift
//  practice 2 swiftful thinking
//
//  Created by Navami Ajay on 25/10/23.
//
//Text() and modifiers
import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world! Welcome to Swift UI".uppercased())
                //.uppercased(with: Locale) -> used when conversion is between english and differen language like french
                
                //.font(.largeTitle)
                .font(.system(size: 50, weight: .heavy, design: .serif))
                .fontWeight(.semibold)
                .foregroundColor(Color.yellow)
                //.underline()
                .underline(pattern: .dashDotDot)
                .bold()
                .italic()
                .strikethrough()
                .strikethrough(pattern: .dashDot)
                .kerning(5) //space between letters
                .baselineOffset(25)  // Shifts the text 50 points above its default baseline
                .frame(width: 300, height: 300, alignment: .leading)
                .border(Color.green)
                .multilineTextAlignment(.center)
                .minimumScaleFactor(0.1)
                
                
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
