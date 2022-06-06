//
//  Factory.swift
//  IOS Foundations with UIKit
//
//  Created by Nguyen Hoang An on 02/06/2022.
//

import Foundation
import UIKit

func makeImageView(_ image: UIImage) -> UIImageView {
    let imageView = UIImageView(image: image)
    imageView.translatesAutoresizingMaskIntoConstraints = false
    imageView.contentMode = .scaleAspectFit
    return imageView
}

func makeLabel(withText text: String) -> UILabel {
    let label = UILabel()
    label.translatesAutoresizingMaskIntoConstraints = false
    label.text = text
    label.numberOfLines = 0
    label.textAlignment = .center
    label.backgroundColor = .yellow
    return label
}

func makeLabel(withText text: String, size: CGFloat) -> UILabel {
    let label = UILabel()
    label.translatesAutoresizingMaskIntoConstraints = false
    label.text = text
    label.numberOfLines = 0
    label.textAlignment = .center
    label.backgroundColor = .yellow
    label.font = .systemFont(ofSize: size)
    return label
}

func makeSwitch(isOn: Bool) -> UISwitch {
    let theSwitch = UISwitch()
    theSwitch.translatesAutoresizingMaskIntoConstraints = false
    theSwitch.isOn = isOn
    return theSwitch
}

func makeButton(withText text: String) -> UIButton {
    let button = UIButton()
    button.translatesAutoresizingMaskIntoConstraints = false
    button.setTitle(text, for: .normal)
    button.backgroundColor = #colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1)
    button.contentEdgeInsets = UIEdgeInsets(top: 16, left: 16, bottom: 16, right: 16)
    return button
}

func makeButton(withText text: String, size: CGFloat) -> UIButton {
    let button = UIButton()
    button.translatesAutoresizingMaskIntoConstraints = false
    button.setTitle(text, for: .normal)
    button.backgroundColor = #colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1)
    button.contentEdgeInsets = UIEdgeInsets(top: 16, left: 16, bottom: 16, right: 16)
    return button
}

func makeLabelSpecial(withText text: String, size: CGFloat, color: UIColor) -> UILabel {
    let label = UILabel()
    label.translatesAutoresizingMaskIntoConstraints = false
    label.text = text
    label.textAlignment = .center
    label.font = .systemFont(ofSize: size)
    label.backgroundColor = color
    return label
}

func makeStackView(withOrientation axis: NSLayoutConstraint.Axis) -> UIStackView {
    let stackView = UIStackView()
    stackView.translatesAutoresizingMaskIntoConstraints = false
    stackView.axis = axis
    stackView.distribution = .fill
    stackView.alignment = .fill
    stackView.spacing = 8
    return stackView
}

extension UIColor {
    static let darkBlue = UIColor(red: 10/255, green: 132/255, blue: 255/255, alpha: 1)
    static let darkGreen = UIColor(red: 48/255, green: 209/255, blue: 88/255, alpha: 1)
    static let darkOrange = UIColor(red: 255/255, green: 149/255, blue: 0/255, alpha: 1)
    static let darkRed = UIColor(red: 255/255, green: 59/255, blue: 48/255, alpha: 1)
    static let darkTeal = UIColor(red: 90/255, green: 200/255, blue: 250/255, alpha: 1)
    static let darkYellow = UIColor(red: 255/255, green: 204/255, blue: 0/255, alpha: 1)
}

func makeScrollView() -> UIScrollView {
    let scrollView = UIScrollView()
    scrollView.translatesAutoresizingMaskIntoConstraints = false
    return scrollView
}

func makeSpacerView(height: CGFloat? = nil) -> UIView {
    let spacerView = UIView(frame: .zero)
    if let height = height {
        spacerView.heightAnchor.constraint(equalToConstant: height).setActiveBreakable()
    }
    spacerView.translatesAutoresizingMaskIntoConstraints = false
    return spacerView
}

extension NSLayoutConstraint {
    @objc func setActiveBreakable(priority: UILayoutPriority = UILayoutPriority(900)) {
        self.priority = priority
        isActive = true
    }
}
