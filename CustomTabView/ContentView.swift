//
//  ContentView.swift
//  CustomTabView
//
//  Created by Artem Frolov on 29/03/2024.
//

import SwiftUI

struct ContentView: View {
    
    @State private var currentPageSelection: Int = 2
    
    var body: some View {
        TabView(selection: $currentPageSelection,
                content:  {
            PlaceholderPage()
                .tag(1)
                .tabItem {
                    Label("1", systemImage: "phone")
                }
            
            PlaceholderPage()
                .tag(2)
                .tabItem {
                    Label("2", systemImage: "carrot")
                }
            
            GoBackPage(currentPageSelection: $currentPageSelection)
                .tag(3)
                .tabItem {
                    Label("Check out", systemImage: "book")
                }                
        })
    }
}

#Preview {
    ContentView()
}
