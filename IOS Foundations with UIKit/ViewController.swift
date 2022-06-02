//
//  ViewController.swift
//  IOS Foundations with UIKit
//
//  Created by Nguyen Hoang An on 30/05/2022.
//

import UIKit

class ViewController: UIViewController {
    let DEBUG_TAG = "⚠️"
    
    private let backgroundImg: UIImageView = {
        let image = #imageLiteral(resourceName: "Breakfast")
        let imageView = makeImageView(image)
        return imageView
    }()
    
    private let topBackground: UIImageView = {
        let image = #imageLiteral(resourceName: "TopGradient")
        let imageView = makeImageView(image)
        return imageView
    }()
    
    private let bottomBackground: UIImageView = {
        let image = #imageLiteral(resourceName: "BottomGradient")
        let imageView = makeImageView(image)
        return imageView
    }()
    
    private let heartImg: UIImageView = {
        let image = #imageLiteral(resourceName: "Heart_health")
        let imageView = makeImageView(image)
        return imageView
    }()
    
    private let topLabel: UILabel = {
        let text = """
        Hardcore
        Avo Toast
        """
        let label = makeLabel(withText: text, textSize: 24, textStyle: .semibold)
        return label
    }()
    
    private let bottomLabel: UILabel = {
        let text = """
        This breakfast is so healthy and will give
        you so much energy that you'll be able to
        accomblish anything today
        """
        let label = makeLabel(withText: text, textSize: 18, textStyle: .regular)
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        debugPrint("\(DEBUG_TAG) 123123")
        
        view.addSubview(backgroundImg)
        view.addSubview(topBackground)
        view.addSubview(bottomBackground)
        view.addSubview(topLabel)
        view.addSubview(heartImg)
        view.addSubview(bottomLabel)

        NSLayoutConstraint.activate([
            backgroundImg.topAnchor.constraint(equalTo: view.topAnchor),
            backgroundImg.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            backgroundImg.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            backgroundImg.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
        
        NSLayoutConstraint.activate([
            topLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
            topLabel.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor)
        ])
        
        NSLayoutConstraint.activate([
            topBackground.topAnchor.constraint(equalTo: view.topAnchor),
            topBackground.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            topBackground.trailingAnchor.constraint(equalTo: view.trailingAnchor)
        ])
        
        NSLayoutConstraint.activate([
            heartImg.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
            heartImg.trailingAnchor.constraint(equalTo: view.layoutMarginsGuide.trailingAnchor)
        ])
        
        NSLayoutConstraint.activate([
            bottomLabel.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -20),
            bottomLabel.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor),
            bottomLabel.trailingAnchor.constraint(equalTo: view.layoutMarginsGuide.trailingAnchor)
        ])
        
        NSLayoutConstraint.activate([
            bottomBackground.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            bottomBackground.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            bottomBackground.trailingAnchor.constraint(equalTo: view.trailingAnchor)
        ])
    }
}
