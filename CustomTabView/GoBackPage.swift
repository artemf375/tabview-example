//
//  GoBackPage.swift
//  CustomTabView
//
//  Created by Artem Frolov on 29/03/2024.
//

import SwiftUI

struct GoBackPage: View {
    
    @Binding var currentPageSelection: Int
    @State private var previousPage: Int = 0
    
    var body: some View {
        NavigationStack {
            VStack {
                Text("Current Page index is \(currentPageSelection)")
                Text("Previous Page index was \(previousPage)")
                
                Button(action: {
                    currentPageSelection = previousPage
                }, label: {
                    Label("Back", systemImage: "arrow.left")
                })
                .buttonStyle(.borderedProminent)
            }
            .toolbar(.hidden, for: .tabBar)
        }
        .onChange(of: currentPageSelection) { oldValue, newValue in
            if newValue == 3 { // 3 is this page
                previousPage = oldValue
            }
        }
    }
}

#Preview {
    GoBackPage(currentPageSelection: .constant(2))
}
