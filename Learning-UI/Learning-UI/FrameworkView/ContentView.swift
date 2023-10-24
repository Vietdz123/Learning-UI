//
//  ContentView.swift
//  Learning-UI
//
//  Created by MAC on 24/10/2023.
//

import SwiftUI

struct FrameworkView: View {
    
    let colums: [GridItem] = [GridItem(.flexible()),
                              GridItem(.flexible()),
                              GridItem(.flexible())]
    
    var body: some View {
        
        
        VStack {
//            HStack{
//                Text("Home")
//            }.frame(height: 48)
            NavigationView {
                ScrollView {
                    LazyVGrid(columns: colums) {
                        ForEach(MockData.frameworks) { framework in
                            FrameworkGridView(framework: framework)
                        }
                    }
                }
                .padding(.bottom, 0.1)
                .navigationTitle("Siuuu")
            }
           
        }

        
    }
}


struct FrameworkGridView: View {
    
    var framework: Framework
    
    var body: some View {
        VStack {
            
            Image(framework.imageName)
                .resizable()
                .frame(width: 90, height: 90)
            
            Text(framework.name)
                .font(.title2)
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.5)
            
            
        }
        .border(.red)
        .frame(width: 80)
    }
}


#Preview {
    FrameworkView()
}
