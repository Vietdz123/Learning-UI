//
//  UIViewControllerRepresentable .swift
//  Learning-UI
//
//  Created by MAC on 25/10/2023.
//

import Foundation
import SwiftUI


struct MyViewController: UIViewControllerRepresentable {
    
    typealias UIViewControllerType = UIViewController
    
    func makeUIViewController(context: Context) -> UIViewController {
        return ImageController(nameImage: "luffy")
    }
    
    func updateUIViewController(_ uiViewController: UIViewController, context: Context) {
        
    }
    
}
