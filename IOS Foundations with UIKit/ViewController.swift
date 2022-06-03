//
//  ViewController.swift
//  IOS Foundations with UIKit
//
//  Created by Nguyen Hoang An on 30/05/2022.
//

import UIKit

class ViewController: UIViewController {
    let DEBUG_TAG = "⚠️"

    override func viewDidLoad() {
        super.viewDidLoad()
        debugPrint("\(DEBUG_TAG) 123123")

        let stackView = makeStackView(withOrientation: .vertical)
        stackView.distribution = .fill
        
        let bigLabel = makeLabelSpecial(withText: "Big", size: 128, color: .darkYellow)
        let medLabel = makeLabelSpecial(withText: "Med", size: 64, color: .darkOrange)
        let smallLabel = makeLabelSpecial(withText: "Sml", size: 32, color: .darkGreen)
        
        stackView.addArrangedSubview(medLabel)
        stackView.addArrangedSubview(bigLabel)
        stackView.addArrangedSubview(smallLabel)

        view.addSubview(stackView)
        
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            stackView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
        ])
        
        bigLabel.setContentHuggingPriority(UILayoutPriority(rawValue: 249), for: .vertical)
        
    }
}
