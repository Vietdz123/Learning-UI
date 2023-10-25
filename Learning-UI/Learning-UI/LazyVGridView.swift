//
//  LazyVGridView.swift
//  Learning-UI
//
//  Created by MAC on 24/10/2023.
//

import SwiftUI

struct LazyVGridView: View {
    
    private var icons = ["pencil", "trash", "printer.fill", "folder", "tray", "hare", "headphones", "ant", "mic", "plus.bubble", "video", "leaf"]
    
    private var gridItems = [GridItem(.flexible(), spacing: 20), GridItem(.flexible(), spacing: 50), GridItem(.flexible())]
    private var a: [Any] = []

    var body: some View {
        // 1
        ScrollView {
            // 2
            LazyVGrid(columns: gridItems, spacing: 110) {
                // 3
                ForEach(icons, id: \.self) {
                    // 4
                    Image(systemName: $0)
                        .font(.system(size: 30))
//                        .frame(width: 50, height: 50)
                        .frame(minWidth: 0, maxWidth: .infinity)
                        .frame(height: 50)
                        .background(Color.red)
                        .cornerRadius(10)
                }
                
            }
            .padding(.leading, 15)
            .padding(.trailing, 15)
            .padding(.top, 10)
            .border(.blue, width: 5)
        }
        .border(.yellow, width: 5)
        
        Spacer()
    }
}

