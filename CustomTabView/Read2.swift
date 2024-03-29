//
//  Read2.swift
//  CustomTabView
//
//  Created by Artem Frolov on 29/03/2024.
//

import SwiftUI

struct Read2: View {
    
    @Binding var currentPageSelection: Int
    @State private var previousPage: Int = 0
    
    var body: some View {
        NavigationStack {
            VStack {
                ScrollViewReader(content: { proxy in
                    ScrollView {
                        VStack(spacing: 10) {
                            
                            Text("Enduring Word")
                                .font(.callout)
                                .fontWeight(.semibold)
                                .foregroundColor(.secondary)
                                .frame(maxWidth: .infinity, alignment: .center)
                                .id("topElement")
                            
                            Text("\(Image(systemName: "globe.europe.africa.fill")) GENESIS 1: THE ACCOUNT OF GOD’S CREATION")
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .font(.title2)
                                .fontWeight(.heavy)
                            
                            TextFirstIndent(text: "A. Thoughts to begin with as we study the Bible.")
                            
                            TextFirstIndent(text: "1. We come to the Bible knowing there is a God.")
                            
                            TextSecondIndent(text: "a. There are many good and strong philosophical and logical reasons to believe in God. Yet the Bible does not make elaborate arguments for the existence of God. However, it does tell us how we can know God exists.")
                            
                            TextSecondIndent(text: "b. The Bible tells us we can know God exists because of what we see in the created world")
                            
                            TextThirdIndent(text: "i. Psalm 19:1-4 explains this: The heavens declare the glory of God; and the firmament shows His handiwork. Day unto day utters speech, and night unto night reveals knowledge. There is no speech nor language where their voice is not heard. Their line has gone out through all the earth, and their words to the end of the world.")
                            
                            Spacer()
                                .frame(height: 80)
                                .id("bottomElement")
                        }
                    }
                    .overlay(alignment: .bottom, content: {
                        // MARK: Navigation Arrows
                        VStack(spacing: 0) {
                            // Layered Stack - Arrows
                            HStack(spacing: 15) {
                                NavigationArrow(systemName: "arrow.down")
                                    .onTapGesture {
                                        withAnimation {
                                            proxy.scrollTo("bottomElement")
                                        }
                                    }
                                
                                Divider()
                                    .frame(width: 1, height: 20)
                                    .overlay(.primary)
                                
                                NavigationArrow(systemName: "arrow.up")
                                    .onTapGesture {
                                        withAnimation {
                                            proxy.scrollTo("topElement")
                                        }
                                    }
                                
                                Divider()
                                    .frame(width: 1, height: 20)
                                    .overlay(.primary)
                                
                                NavigationArrow(systemName: "arrow.left")
                                
                                Divider()
                                    .frame(width: 1, height: 20)
                                    .overlay(.primary)
                                
                                NavigationArrow(systemName: "arrow.right")
                            }
                            .padding()
                            .background(
                                Capsule()
                                    .fill(.regularMaterial) // there are more options here, like .ultraThinMaterial, .thinMaterial, .regularMaterial, .thickMaterial, .ultraThickMaterial and .bar
                            )
                            .padding(.bottom, 5)
                        }
                    })
                    .padding([.top, .horizontal]) // adds standard padding everywhere
                    .scrollIndicators(.hidden) // hide scroll indicator on the right (change to .visible to see)
                })
            }
            .background(
                Color(.secondarySystemBackground)
            )
            .toolbar(.hidden, for: .tabBar) // hiding the tabbar
            .toolbar { // the actual tabbar we want
                ToolbarItem(placement: .bottomBar) {
                    // Tab Bar
                    VStack(spacing: 0) {
                        // Horizontal Stack - Bottom Bar
                        HStack {
                            // Vertical Stack - Book and Chapter
                            VStack(alignment: .leading) {
                                Text("Genesis 1")
                                    .font(.title3)
                                    .fontWeight(.semibold)
                                
                                HStack(spacing: 5) {
                                    Text("Intro")
                                        .font(.title3)
                                    
                                    Image(systemName: "chevron.down")
                                        .font(.caption)
                                }
                                .foregroundColor(.secondary)
                            }
                            .multilineTextAlignment(.leading)
                            Spacer()
                            
                            // Horizontal Stack - Buttons
                            HStack(spacing: 5) {
                                TabBarIcon(systemName: "bookmark")
                                
                                TabBarIcon(systemName: "textformat")
                                
                                TabBarIcon(systemName: "xmark")
                                    .onTapGesture {
                                        currentPageSelection = previousPage
                                    }
                            }
                        }
                        .padding([.top, .horizontal])
                    }
                }
            }
        }
    }
}

// MARK: Some reusable views so it's easier to customise

struct TabBarIcon: View {
    let systemName: String
    
    var body: some View {
        Image(systemName: systemName)
            .padding(.all, 10)
            .background(
                Circle()
                    .fill(.gray.opacity(0.5))
            )
    }
}

struct TextFirstIndent: View {
    let text: String
    
    var body: some View {
        Text(text)
            .font(.system(.title2, weight: .bold))
            .frame(maxWidth: .infinity, alignment: .leading)
    }
}

struct TextSecondIndent: View {
    let text: String
    
    var body: some View {
        Text(text)
            .font(.system(.title3, weight: .regular))
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.leading, 10)
    }
}

struct TextThirdIndent: View {
    let text: String
    
    var body: some View {
        Text(text)
            .italic()
            .font(.title3)
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.leading, 30)
    }
}

struct NavigationArrow: View {
    let systemName: String
    
    var body: some View {
        Image(systemName: systemName)
            .imageScale(.small)
            .symbolRenderingMode(.monochrome)
            .font(.system(.title2, weight: .semibold))
    }
}

#Preview {
    Read2(currentPageSelection: .constant(2))
}
