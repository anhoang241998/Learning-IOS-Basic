//
//  RowView.swift
//  IOS Foundations with UIKit
//
//  Created by Nguyen Hoang An on 03/06/2022.
//

import Foundation
import UIKit

class RowView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupView() {
        let titleLabel = makeLabel(withText: "Gapless Playback")
        let onOffSwitch = makeSwitch(isOn: true)
        
        addSubview(titleLabel)
        addSubview(onOffSwitch)
        
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: topAnchor),
            titleLabel.leadingAnchor.constraint(equalTo: leadingAnchor)
        ])
        
        NSLayoutConstraint.activate([
            onOffSwitch.trailingAnchor.constraint(equalTo: trailingAnchor),
            onOffSwitch.topAnchor.constraint(equalTo: topAnchor)
        ])
        
    }
    
    override var intrinsicContentSize: CGSize {
        return CGSize(width: 200, height: 31)
    }
    
}
