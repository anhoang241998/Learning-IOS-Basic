//
//  RedView.swift
//  IOS Foundations with UIKit
//
//  Created by Nguyen Hoang An on 06/06/2022.
//

import Foundation
import UIKit

class RedView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupViews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupViews() {
        backgroundColor = .red
    }
    
    override var intrinsicContentSize: CGSize {
        return CGSize(width: 200, height: 200)
    }
    
}
