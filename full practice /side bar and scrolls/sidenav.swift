//
//  sidenav.swift
//  side bar and scrolls
//
//  Created by Navami Ajay on 02/11/23.
//

import SwiftUI

struct sidenav: View {
    //@Binding var isPresented: Bool
    var body: some View {
        NavigationView {
            List {
                Label("Explore", systemImage: "waveform.badge.magnifyingglass")
                Label("Images", systemImage: "globe.americas.fill")
                Label("help", systemImage: "questionmark.circle")
                    .frame(width: 250, height: .infinity, alignment: .leading)
            }
            .navigationTitle("Menu")
            .navigationBarTitleDisplayMode(.large)
            .padding(15)
            
        }.listStyle(.plain)
            .padding(.top,60)
        
            
    }
}
    
#Preview {
    sidenav()
}
