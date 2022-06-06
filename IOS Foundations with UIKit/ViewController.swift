//
//  ViewController.swift
//  IOS Foundations with UIKit
//
//  Created by Nguyen Hoang An on 30/05/2022.
//

import UIKit

class ViewController: UIViewController {
    private let DEBUG_TAG = "⚠️"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
    }
    
    private func setupViews() {
        
    }
    
    private func makeLabel(withText text: String, fontSize: CGFloat) -> UILabel {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = text
        label.textColor = .white
        label.font = .systemFont(ofSize: fontSize)
        
        return label
    }
    
    private func makeImageView(withImage image: UIImage) -> UIImageView {
        let imageView = UIImageView(image: image)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        
        return imageView
    }
    
    private func makeButton(withText text: String, withImage image: UIImage) -> UIButton {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle(text, for: .normal)
        button.setImage(image, for: .normal)
        
        return button
    }
    
}
