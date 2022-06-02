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
    imageView.contentMode = .scaleAspectFill
    return imageView
}

func makeLabel(withText text: String, textSize: CGFloat, textStyle: UIFont.Weight) -> UILabel {
    let label = UILabel()
    label.translatesAutoresizingMaskIntoConstraints = false
    label.text = text
    label.numberOfLines = 0
    label.font = .systemFont(ofSize: textSize, weight: textStyle)
    label.textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
    return label
}
