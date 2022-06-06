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
    
    let label2 = makeLabelSpecial(withText: "Now you don't", size: 32, color: .red)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        debugPrint("\(DEBUG_TAG) 123123")
        setupViews()
    }
    
    func setupViews() {
        let button = makeButton(withText: "Left/Right")
        let label1 = makeLabel(withText: "Now you see me")
        let stackView = makeStackView(withOrientation: .vertical)
        stackView.distribution = .fillProportionally
        
        stackView.addArrangedSubview(label1)
        stackView.addArrangedSubview(label2)
        stackView.addArrangedSubview(button)
        
        view.addSubview(stackView)
        
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: view.topAnchor),
            stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            stackView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
    
        button.addTarget(self, action: #selector(setOnButtonClicked), for: .primaryActionTriggered)
    }
    
    @objc func setOnButtonClicked(sender: UIButton) {
        label2.isHidden = !label2.isHidden
    }
}
