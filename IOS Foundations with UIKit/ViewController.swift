//
//  ViewController.swift
//  IOS Foundations with UIKit
//
//  Created by Nguyen Hoang An on 30/05/2022.
//

import UIKit

class ViewController: UIViewController {
    let DEBUG_TAG = "⚠️"
    var topConstraint = NSLayoutConstraint()
    
    var leadingConstraint = NSLayoutConstraint()
    var trailingConstraint = NSLayoutConstraint()

    override func viewDidLoad() {
        super.viewDidLoad()
        debugPrint("\(DEBUG_TAG) 123123")
        setupViews()
    }
    
    func setupViews() {
        let button = makeButton(withText: "Left/Right")
        let label = makeLabel(withText: "Watch me!")
        
        view.addSubview(label)
        view.addSubview(button)
        
        NSLayoutConstraint.activate([
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            button.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
        
        topConstraint = label.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 80)
        topConstraint.isActive = true
        
        leadingConstraint = label.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 80)
        trailingConstraint = label.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -80)
        
        leadingConstraint.isActive = true
    
        button.addTarget(self, action: #selector(setOnButtonClicked), for: .primaryActionTriggered)
    }
    
    @objc func setOnButtonClicked(sender: UIButton) {
        if leadingConstraint.isActive {
            leadingConstraint.isActive = false
            trailingConstraint.isActive = true
        } else {
            leadingConstraint.isActive = true
            trailingConstraint.isActive = false
        }
    }
}
