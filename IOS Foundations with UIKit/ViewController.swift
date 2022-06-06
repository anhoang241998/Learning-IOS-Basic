//
//  ViewController.swift
//  IOS Foundations with UIKit
//
//  Created by Nguyen Hoang An on 30/05/2022.
//

import UIKit

class ViewController: UIViewController {
    private let DEBUG_TAG = "⚠️"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
    }
    
    private func setupViews() {
        let backgroundImg = makeImageView(withImage: #imageLiteral(resourceName: "background"))
        let logo = makeImageView(withImage: #imageLiteral(resourceName: "logo"))
        
        let button = makeButton(withText: "", withImage: #imageLiteral(resourceName: "dealbutton"))
        
        let buttonAndCardStackView = makeStackView(distribution: .fill, direction: .vertical)
        let cardStackView = makeStackView(distribution: .fill, direction: .horizontal)
        let firstCard = makeImageView(withImage: #imageLiteral(resourceName: "card6"))
        let secondCard = makeImageView(withImage: #imageLiteral(resourceName: "card10"))
        
        cardStackView.addArrangedSubview(firstCard)
        cardStackView.addArrangedSubview(secondCard)
        cardStackView.spacing = 30
        
        buttonAndCardStackView.addArrangedSubview(cardStackView)
        buttonAndCardStackView.addArrangedSubview(button)
        buttonAndCardStackView.spacing = 30
        
        let playersStackView = makeStackView(distribution: .fill, direction: .vertical)
        let playerLabel = makeLabel(withText: "Player", fontSize: 17)
        let playerResultLabel = makeLabel(withText: "0", fontSize: 40)
        
        playersStackView.addArrangedSubview(playerLabel)
        playersStackView.addArrangedSubview(playerResultLabel)
        playersStackView.alignment = .leading
        
        let cpuStackView = makeStackView(distribution: .fill, direction: .vertical)
        let cpuLabel = makeLabel(withText: "CPU", fontSize: 17)
        let cpuResultLabel = makeLabel(withText: "0", fontSize: 40)
        
        cpuStackView.addArrangedSubview(cpuLabel)
        cpuStackView.addArrangedSubview(cpuResultLabel)
        cpuStackView.alignment = .trailing
        
        view.addSubview(backgroundImg)
        view.addSubview(logo)
        view.addSubview(buttonAndCardStackView)
        view.addSubview(playersStackView)
        view.addSubview(cpuStackView)
        
        NSLayoutConstraint.activate([
            backgroundImg.topAnchor.constraint(equalTo: view.topAnchor),
            backgroundImg.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            backgroundImg.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            backgroundImg.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
        
        NSLayoutConstraint.activate([
            logo.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10),
            logo.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
        
        NSLayoutConstraint.activate([
            buttonAndCardStackView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            buttonAndCardStackView.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 20)
        ])
        
        NSLayoutConstraint.activate([
            playersStackView.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor, constant: 20),
            playersStackView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -20)
        ])
        
        NSLayoutConstraint.activate([
            cpuStackView.trailingAnchor.constraint(equalTo: view.layoutMarginsGuide.trailingAnchor, constant: -20),
            cpuStackView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -20)
        ])
        
        let width = self.view.traitCollection.horizontalSizeClass
        let height = self.view.traitCollection.verticalSizeClass
        
        if width == .compact && height == .compact {
            buttonAndCardStackView.spacing = 20

            logo.contentMode = .scaleAspectFit
            NSLayoutConstraint.activate([
                logo.heightAnchor.constraint(equalToConstant: 55)
            ])

            NSLayoutConstraint.activate([
                buttonAndCardStackView.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 30)
            ])

        }
    }
    
    private func makeLabel(withText text: String, fontSize: CGFloat) -> UILabel {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = text
        label.textColor = .white
        label.font = .systemFont(ofSize: fontSize)
        
        return label
    }
    
    private func makeImageView(withImage image: UIImage) -> UIImageView {
        let imageView = UIImageView(image: image)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        
        return imageView
    }
    
    private func makeButton(withText text: String, withImage image: UIImage) -> UIButton {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle(text, for: .normal)
        button.setImage(image, for: .normal)
        
        return button
    }
    
}
