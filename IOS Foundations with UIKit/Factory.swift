//
//  Factory.swift
//  IOS Foundations with UIKit
//
//  Created by Nguyen Hoang An on 02/06/2022.
//

import Foundation
import UIKit

func makeStackView(distribution: UIStackView.Distribution, direction: NSLayoutConstraint.Axis) -> UIStackView {
    let stackView = UIStackView()
    stackView.translatesAutoresizingMaskIntoConstraints = false
    stackView.axis = direction
    stackView.distribution = distribution
    stackView.alignment = .center
    stackView.spacing = 0
    
    return stackView
}
