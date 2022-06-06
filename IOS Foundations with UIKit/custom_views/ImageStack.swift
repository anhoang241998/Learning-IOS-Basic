//
//  ImageStack.swift
//  IOS Foundations with UIKit
//
//  Created by Nguyen Hoang An on 06/06/2022.
//

import Foundation
import UIKit

class ImageStack: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) not implemented")
    }
    
    private func setupViews() {
        let stackView = makeStackView(distribution: .fillEqually, direction: .vertical)
        
        let firstImage = makeImageView(withImage: #imageLiteral(resourceName: "Barbell"))
        let secondImage = makeImageView(withImage: #imageLiteral(resourceName: "Beach"))
        let thirdImage = makeImageView(withImage: #imageLiteral(resourceName: "Running"))
        
        stackView.addArrangedSubview(firstImage)
        stackView.addArrangedSubview(secondImage)
        stackView.addArrangedSubview(thirdImage)
        
        addSubview(stackView)
        
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: topAnchor),
            stackView.leadingAnchor.constraint(equalTo: leadingAnchor),
            stackView.trailingAnchor.constraint(equalTo: trailingAnchor),
            stackView.bottomAnchor.constraint(equalTo: bottomAnchor)
        ])
    }
    
    private func makeImageView(withImage image: UIImage) -> UIImageView {
        let imageView = UIImageView(image: image)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        
        return imageView
    }
    
    override var intrinsicContentSize: CGSize {
        return CGSize(width: 100, height: 100)
    }
    
}
