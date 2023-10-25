//
//  ContentView.swift
//  Learning-UI
//
//  Created by MAC on 24/10/2023.
//

import SwiftUI

struct FrameworkView: View {
    
    @StateObject var viewModel = FrameworkViewModel()
    
    let colums: [GridItem] = [GridItem(.flexible()),
                              GridItem(.flexible()),
                              GridItem(.flexible())]
    
    var body: some View {
        

        VStack {
//            HStack{
//                Text("Home")
//            }.frame(height: 48)
            NavigationStack {
                ScrollView {
                    LazyVGrid(columns: colums) {
                        ForEach(MockData.frameworks) { framework in
                            NavigationLink {
                                FrameworkDetailView(framework: viewModel.selectedFramework ?? MockData.sampleFramework, isPresenting: $viewModel.isShowingDetailView)
                            } label: {
                                FrameworkGridView(framework: framework)
                            }

                            
    
                        }
                    }
                }
                .padding(.bottom, 0.1)
                .border(.yellow, width: 10)
                .navigationTitle("Siuuu")

            }
           
        }
        

//        Image("luffy")
//            .frame(width: 150, height: 200)
    }
}

struct WeatherDayView: View {
    var body: some View {
        MyViewController()
            .frame(width: 150, height: 200)
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


