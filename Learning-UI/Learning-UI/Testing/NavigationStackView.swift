//
//  NavigationStackView.swift
//  Learning-UI
//
//  Created by MAC on 25/10/2023.
//

import SwiftUI

struct NavigationStackView: View {
    
    private var bgColors: [Color] = [ .indigo, .yellow, .green, .orange, .brown ]
    private var systemImages: [String] = [ "trash", "cloud", "bolt" ]
    
    var body: some View {
        
        NavigationStack {
            List(bgColors, id: \.self) { bgColor in
         
                NavigationLink(value: bgColor) {
                    Text(bgColor.description)
                }
         
            }
            .listStyle(.plain)
            .navigationDestination(for: Color.self) { color in
                color
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
            }
                     
            List(systemImages, id: \.self) { image in
         
                NavigationLink(value: image) {
                    Text(image.description)
                }
         
            }
            .listStyle(.plain)
            .navigationDestination(for: String.self) { image in
                Image(systemName: image)
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
            }
         
            .navigationTitle("Color12122")
        }
    }
}

#Preview {
    NavigationStackView()
}
