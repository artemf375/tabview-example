//
//  ContentView.swift
//  CustomTabView
//
//  Created by Artem Frolov on 29/03/2024.
//

import SwiftUI

struct ContentView: View {
    
    @State private var currentPageSelection: Int = 1
    
    var body: some View {
        TabView(selection: $currentPageSelection,
                content:  {
            PlaceholderPage()
                .tag(1)
                .tabItem {
                    Label("1", systemImage: "person")
                }
            
            Read(currentPageSelection: $currentPageSelection)
                .tag(2)
                .tabItem {
                    Label("Initial", systemImage: "book")
                }
            
            Read2(currentPageSelection: $currentPageSelection)
                .tag(3)
                .tabItem {
                    Label("Read", systemImage: "book.and.wrench")
                }
        })
    }
}

#Preview {
    ContentView()
}
