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
        let girlsImage = makeImageView(withImage: #imageLiteral(resourceName: "Girl"), contentMode: .top)
        let cancelImage = makeImageView(withImage: #imageLiteral(resourceName: "Close"), contentMode: .scaleAspectFit)
        let chatImage = makeImageView(withImage: #imageLiteral(resourceName: "Chat"), contentMode: .scaleAspectFit)
        
        let nameLabel = makeLabel(withText: "Joanna", fontSize: 26, withWeight: .semibold, withColor: .black)
        let desLabel = makeLabel(withText: "\"I'd like to meet you\"", fontSize: 22, withWeight: .semibold, withColor: .black)
        let longLabel = makeLabel(withText: """
        dsadasdsaldmsadkmsakldmlasd
        daskldmaskldmlasdmlasmdlasmdla
        dasdklsaldmasdml
        """, fontSize: 18, withWeight: .regular, withColor: .black)
        
        view.addSubview(girlsImage)
        view.addSubview(cancelImage)
        view.addSubview(chatImage)
        view.addSubview(nameLabel)
        view.addSubview(desLabel)
        view.addSubview(longLabel)
        
        NSLayoutConstraint.activate([
            girlsImage.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            girlsImage.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            girlsImage.trailingAnchor.constraint(equalTo: view.trailingAnchor)
        ])
        
        NSLayoutConstraint.activate([
            cancelImage.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
            cancelImage.trailingAnchor.constraint(equalTo: view.layoutMarginsGuide.trailingAnchor)
        ])
        
        NSLayoutConstraint.activate([
            chatImage.bottomAnchor.constraint(equalTo: girlsImage.bottomAnchor, constant: -20),
            chatImage.trailingAnchor.constraint(equalTo: view.layoutMarginsGuide.trailingAnchor)
        ])
        
        NSLayoutConstraint.activate([
            nameLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
            nameLabel.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor),
            nameLabel.trailingAnchor.constraint(equalTo: cancelImage.leadingAnchor)
        ])
    
        nameLabel.setContentHuggingPriority(UILayoutPriority(249), for: .horizontal)
        
        NSLayoutConstraint.activate([
            desLabel.topAnchor.constraint(equalTo: girlsImage.bottomAnchor),
            desLabel.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor),
            desLabel.trailingAnchor.constraint(equalTo: view.layoutMarginsGuide.trailingAnchor)
        ])
        
        NSLayoutConstraint.activate([
            longLabel.topAnchor.constraint(equalTo: desLabel.bottomAnchor),
            longLabel.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor),
            longLabel.trailingAnchor.constraint(equalTo: view.layoutMarginsGuide.trailingAnchor),
            longLabel.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
        ])
        
        girlsImage.setContentHuggingPriority(UILayoutPriority(253), for: .vertical)
        desLabel.setContentHuggingPriority(UILayoutPriority(252), for: .vertical)
    }
    
    private func makeLabel(
        withText text: String,
        fontSize: CGFloat,
        withWeight weight: UIFont.Weight,
        withColor color: UIColor
    ) -> UILabel {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = text
        label.textColor = color
        label.font = .systemFont(ofSize: fontSize, weight: weight)
        label.numberOfLines = 0
        
        return label
    }
    
    private func makeImageView(withImage image: UIImage, contentMode: UIView.ContentMode) -> UIImageView {
        let imageView = UIImageView(image: image)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = contentMode
        imageView.clipsToBounds = true
        
        return imageView
    }
}
