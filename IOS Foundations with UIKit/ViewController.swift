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

    override func viewDidLoad() {
        super.viewDidLoad()
        debugPrint("\(DEBUG_TAG) 123123")
        setupViews()
    }
    
    func setupViews() {
        let button = makeButton(withText: "Up/Down")
        let label = makeLabel(withText: "Watch me!")
        
        view.addSubview(label)
        view.addSubview(button)
        
        NSLayoutConstraint.activate([
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            button.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
        
        topConstraint = label.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 80)
        topConstraint.isActive = true
        
        NSLayoutConstraint.activate([
            label.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
    
        button.addTarget(self, action: #selector(setOnButtonClicked), for: .primaryActionTriggered)
    }
    
    @objc func setOnButtonClicked(sender: UIButton) {
        if topConstraint.constant == 80 {
            topConstraint.constant = 80 * 2
        } else {
            topConstraint.constant = 80
        }
    }
}
