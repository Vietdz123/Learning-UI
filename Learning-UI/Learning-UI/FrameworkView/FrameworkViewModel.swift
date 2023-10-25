//
//  FrameworkViewModel.swift
//  Learning-UI
//
//  Created by MAC on 25/10/2023.
//

import Foundation


class FrameworkViewModel: ObservableObject {
    
    var selectedFramework: Framework? {
        didSet {
            isShowingDetailView = true
        }
    }
    
    @Published var isShowingDetailView = false
    
}
