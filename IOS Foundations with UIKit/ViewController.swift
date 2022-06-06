//
//  ViewController.swift
//  IOS Foundations with UIKit
//
//  Created by Nguyen Hoang An on 30/05/2022.
//

import UIKit

class ViewController: UIViewController {
    let DEBUG_TAG = "⚠️"
    
    var stackView: UIStackView = makeStackView(withOrientation: .vertical)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        registerForOrientationChanges()
        setupViews()
    }
    
    func registerForOrientationChanges() {
        NotificationCenter.default.addObserver(self, selector: #selector(rotated), name: UIDevice.orientationDidChangeNotification, object: nil)
    }
    
    func setupViews() {
        navigationItem.title = "Orientation"
        
        let redView = RedView()
        let blueView = BlueView()
        
        stackView.addArrangedSubview(redView)
        stackView.addArrangedSubview(blueView)
        
        view.addSubview(stackView)
        
        NSLayoutConstraint.activate([
            redView.heightAnchor.constraint(equalTo: blueView.heightAnchor),
            redView.widthAnchor.constraint(equalTo: blueView.widthAnchor)
        ])
        
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            stackView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
        ])
        
    }
    
    @objc func rotated() {
        if UIDevice.current.orientation.isLandscape {
            debugPrint("\(DEBUG_TAG) Landscape")
            stackView.axis = .horizontal
        } else {
            debugPrint("\(DEBUG_TAG) Vertical")
            stackView.axis = .vertical
        }
    }
    
    deinit {
        NotificationCenter.default.removeObserver(self)
    }
}
