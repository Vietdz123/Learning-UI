//
//  ImageController.swift
//  Learning-UI
//
//  Created by MAC on 25/10/2023.
//

import UIKit

class ImageController: UIViewController {
    
    // MARK: - Properties
    let nameImage: String
    
    private lazy var imageView: UIImageView = {
        var imv = UIImageView(image: UIImage(named: nameImage))
        imv.translatesAutoresizingMaskIntoConstraints = false
        imv.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(handelImageviewTapped)))
        imv.isUserInteractionEnabled = true
        return imv
    }()
    
    
    // MARK: - View Lifecycle
    init(nameImage: String) {
        self.nameImage = nameImage
        
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(imageView)
        
        NSLayoutConstraint.activate([
            imageView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            imageView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            imageView.topAnchor.constraint(equalTo: view.topAnchor),
            imageView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
        ])
    }
    
    
    
    
    // MARK: - Methods
    
    
    // MARK: - Selectors
    @objc func handelImageviewTapped() {
        
        imageView.image = UIImage(named: "anya")
        
    }
    
}
