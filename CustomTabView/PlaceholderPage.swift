//
//  PlaceholderPage.swift
//  CustomTabView
//
//  Created by Artem Frolov on 29/03/2024.
//

import SwiftUI

struct PlaceholderPage: View {
    
    @State private var isPresentedChapterView: Bool = false
    
    var body: some View {
        NavigationStack {
            VStack(spacing: 20, content: {
                Text("Click the button to read the chapter")
                
                Button(action: {
                    isPresentedChapterView.toggle()
                }, label: {
                    Text("Read")
                })
                .buttonStyle(.borderedProminent)
            })
            .fullScreenCover(isPresented: $isPresentedChapterView, content: {
                Read2()
            })
        }
    }
}

#Preview {
    PlaceholderPage()
}
