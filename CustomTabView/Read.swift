//
//  Read.swift
//  MyProject
//
//  Designed in DetailsPro
//  Copyright © (My Organization). All rights reserved.
//

import SwiftUI

struct Read: View {
    
    @Binding var currentPageSelection: Int
    @State private var previousPage: Int = 0
    
    var body: some View {
        // Vertical Stack - Screen
        VStack {
            // Layered Stack - Content
            ZStack {
                // Scroll Container
                ScrollView {
                    // Layered Stack - Content
                    ZStack {
                        // Vertical Stack - Commentary
                        VStack(spacing: 10) {
                            // Horizontal Stack - Enduring Word
                            HStack {
                                Text("Enduring Word")
                                    .kerning(0.3)
                                    .font(.system(size: 16, weight: .semibold, design: .default))
                                    .foregroundColor(Color(.sRGB, red: 152/255, green: 152/255, blue: 159/255))
                                    .multilineTextAlignment(.center)
                                    .frame(maxWidth: .infinity)
                                    .clipped()
                                Spacer()
                            }
                            .padding(.bottom)
                            // Horizontal Stack - Page Title
                            HStack {
                                // Vertical Stack - Page Title
                                VStack(spacing: 5) {
                                    // Horizontal Stack - First Line
                                    HStack(spacing: 5) {
                                        Image(systemName: "globe.europe.africa.fill")
                                            .imageScale(.large)
                                            .symbolRenderingMode(.monochrome)
                                            .font(.system(.body, weight: .bold))
                                        Text("GENESIS 1: THE ACCOUNT OF")
                                            .font(.system(size: 21, weight: .heavy, design: .default))
                                            .multilineTextAlignment(.leading)
                                            .lineSpacing(7)
                                            .frame(maxWidth: .infinity, alignment: .leading)
                                            .clipped()
                                    }
                                    Text("GOD’S CREATION")
                                        .font(.system(size: 21, weight: .heavy, design: .default))
                                        .multilineTextAlignment(.leading)
                                        .lineSpacing(7)
                                        .frame(maxWidth: .infinity, alignment: .leading)
                                        .clipped()
                                }
                                .padding(.bottom, 8)
                            }
                            Text("A. Thoughts to begin with as we study the Bible.")
                                .font(.system(.title2, weight: .bold))
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .clipped()
                                .lineSpacing(-10)
                                .padding(.bottom, 10)
                            Text("1. We come to the Bible knowing there is a God.")
                                .font(.system(.title2, weight: .bold))
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .clipped()
                                .lineSpacing(-10)
                                .padding(.bottom, 10)
                            Text("a. There are many good and strong philosophical and logical reasons to believe in God. Yet the Bible does not make elaborate arguments for the existence of God. However, it does tell us how we can know God exists.")
                                .font(.system(.title3, weight: .regular))
                                .frame(maxWidth: .infinity, maxHeight: .infinity)
                                .clipped()
                                .padding(.leading, 25)
                                .padding(.bottom, 10)
                            Text("b. The Bible tells us we can know God exists because of what we see in the created world")
                                .font(.system(.title3, weight: .regular))
                                .frame(maxWidth: .infinity, maxHeight: .infinity)
                                .clipped()
                                .padding(.leading, 25)
                                .padding(.bottom, 10)
                            Text("i. Psalm 19:1-4 explains this: The heavens declare the glory of God; and the firmament shows His handiwork. Day unto day utters speech, and night unto night reveals knowledge. There is no speech nor language where their voice is not heard. Their line has gone out through all the earth, and their words to the end of the world.")
                                .italic()
                                .font(.system(.title3, weight: .regular))
                                .frame(maxWidth: .infinity, maxHeight: .infinity)
                                .clipped()
                                .padding(.top, 1)
                                .padding(.leading, 65)
                        }
                        .padding(.top, 35)
                        .padding(.horizontal, 23)
                        .padding(.bottom, 130)
                    }
                }
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .clipped()
        .background {
            RoundedRectangle(cornerRadius: 10, style: .continuous)
                .fill(Color(.secondarySystemBackground))
        }
        .overlay(alignment: .top) {
            // Top Bar
            VStack {
                // Top Spacer
                Spacer()
                    .frame(maxWidth: .infinity)
                    .clipped()
            }
            .frame(height: 15)
            .clipped()
            .background {
                RoundedRectangle(cornerRadius: 0, style: .continuous)
                    .fill(Color(.secondarySystemBackground))
                    .ignoresSafeArea()
            }
        }
        .overlay(alignment: .bottom) {
            // Vertical Stack - Bottom Bars
            VStack(spacing: 0) {
                // Layered Stack - Arrows
                ZStack {
                    RoundedRectangle(cornerRadius: 100, style: .continuous)
                        .fill(.regularMaterial)
                        .frame(width: 216, height: 55)
                        .clipped()
                        .background {
                            Rectangle()
                                .fill(.clear)
                                .background(Material.ultraThin)
                                .mask { RoundedRectangle(cornerRadius: 100, style: .continuous) }
                        }
                    // Horizontal Stack - Arrows
                    HStack(spacing: 14) {
                        Image(systemName: "arrow.down")
                            .imageScale(.small)
                            .symbolRenderingMode(.monochrome)
                            .font(.system(.title2, weight: .semibold))
                            .foregroundColor(.primary)
                        Text("l")
                            .font(.system(.title, weight: .ultraLight))
                            .foregroundColor(.primary)
                        Image(systemName: "arrow.up")
                            .imageScale(.small)
                            .symbolRenderingMode(.monochrome)
                            .font(.system(.title2, weight: .semibold))
                            .foregroundColor(.primary)
                        Text("l")
                            .font(.system(.title, weight: .ultraLight))
                            .foregroundColor(.primary)
                        Image(systemName: "arrow.left")
                            .imageScale(.small)
                            .symbolRenderingMode(.monochrome)
                            .font(.system(.title2, weight: .semibold))
                            .foregroundColor(.primary)
                        Text("l")
                            .font(.system(.title, weight: .ultraLight))
                            .foregroundColor(.primary)
                        Image(systemName: "arrow.right")
                            .imageScale(.small)
                            .symbolRenderingMode(.monochrome)
                            .font(.system(.title2, weight: .semibold))
                            .foregroundColor(.primary)
                    }
                    .padding(.horizontal, 19)
                }
                .padding(.bottom, 10)
                // Tab Bar
                VStack(spacing: 0) {
                    Divider()
                    // Horizontal Stack - Bottom Bar
                    HStack {
                        // Vertical Stack - Book and Chapter
                        VStack(alignment: .leading, spacing: 1) {
                            Text("Genesis 1")
                                .font(.system(.title3, weight: .semibold))
                            HStack(spacing: 2) {
                                Text("Intro")
                                    .font(.system(.title3, weight: .medium))
                                Image(systemName: "chevron.down")
                                    .imageScale(.large)
                                    .symbolRenderingMode(.monochrome)
                                    .font(.system(size: 10, weight: .bold, design: .default))
                                    .padding(.top, 3)
                            }
                            .foregroundColor(.secondary)
                        }
                        .multilineTextAlignment(.leading)
                        Spacer()
                        // Horizontal Stack - Buttons
                        HStack(spacing: 18) {
                            Image(systemName: "bookmark.circle.fill")
                                .imageScale(.large)
                                .symbolRenderingMode(.hierarchical)
                            ZStack {
                                Image(systemName: "textformat")
                                    .imageScale(.medium)
                                    .symbolRenderingMode(.monochrome)
                                    .font(.system(.body, weight: .semibold))
                                    .foregroundColor(.primary)
                                Circle()
                                    .frame(width: 35)
                                    .clipped()
                                    .foregroundColor(Color(.tertiaryLabel))
                            }
                            .padding(.horizontal, 2)
                            Image(systemName: "xmark.circle.fill")
                                .imageScale(.large)
                                .symbolRenderingMode(.hierarchical)
                                .onTapGesture {
                                    currentPageSelection = previousPage
                                }
                        }
                        .font(.system(size: 27, weight: .regular, design: .default))
                    }
                    .padding(.top, 15)
                    .padding(.horizontal, 22)
                }
                .frame(height: 75, alignment: .top)
                .clipped()
                .background {
                    Rectangle()
                        .fill(.clear)
                        .background(Material.ultraThin)
                }
            }
        }
        .toolbar(.hidden, for: .tabBar)
    }
}

struct Read_Previews: PreviewProvider {
    static var previews: some View {
        Read(currentPageSelection: .constant(2))
    }
}
