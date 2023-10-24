//
//  FrameworkDetailView.swift
//  Learning-UI
//
//  Created by MAC on 24/10/2023.
//

import SwiftUI

struct FrameworkDetailView: View {
    
    let widthScreen = UIScreen.main.bounds.width
    
    var body: some View {
        
        VStack(spacing: 0) {
            Button(action: {
                
            }, label: {
               Image(systemName: "xmark")
                    .resizable()
                    .renderingMode(.template)
                    .foregroundColor(Color(.label))
                    .frame(width: 24, height: 24)
                    .frame(width: 44, height: 44)
                
            })
            
            Spacer()
            
            FrameworkGridView(framework: MockData.sampleFramework)
        
            
            Text(MockData.sampleFramework.description)
                .font(.body)
                .padding()
            
            Spacer()
            
            Button {
                
            } label: {
                Text("learn more")
                    .font(.title2)
                    .foregroundColor(.white)
//                    .frame(maxWidth: .infinity)
//                    .frame(height: 48)
                    .frame(width: widthScreen - 64, height: (widthScreen - 64) / 5)
                    .background(
                        RoundedRectangle(cornerRadius: 16)
                            .fill(.red)
                    )
                   
                
            }
            

        }
        

        
    }
    
    
}

#Preview {
    FrameworkDetailView()
}


extension View {
    
    func mfont(_ size : CGFloat, _ weight : Font.Weight) -> some View {
        self.font(.system(size: size).weight(weight))
    }
    
}
