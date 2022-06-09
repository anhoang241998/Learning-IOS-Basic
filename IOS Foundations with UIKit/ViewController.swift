//
//  ViewController.swift
//  IOS Foundations with UIKit
//
//  Created by Nguyen Hoang An on 30/05/2022.
//

import UIKit

class ViewController: UIViewController {
    private let DEBUG_TAG = "⚠️"
    
    var buttonAndCardStackView = UIStackView()
    var logo = UIImageView()
    var backgroundImg = UIImageView()
    var button = UIButton()
    var cardStackView = UIStackView()
    var firstCard = UIImageView()
    var secondCard = UIImageView()
    var playersStackView = UIStackView()
    var playerLabel = UILabel()
    var playerResultLabel = UILabel()
    var cpuStackView = UIStackView()
    var cpuLabel = UILabel()
    var cpuResultLabel = UILabel()
    
    var leftScore = 0
    var rightScore = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        styles()
        layout()
        
        button.addTarget(self, action: #selector(buttonClicked), for: .primaryActionTriggered)
    }
    
    @objc func buttonClicked() {
        
        // Randomize some numbers
        let randomLeftNumber = Int.random(in: 2...14)
        let randomRightNumber = Int.random(in: 2...14)
        
        // Update the image views
        firstCard.image = UIImage(named: "card\(randomLeftNumber)")
        secondCard.image = UIImage(named: "card\(randomRightNumber)")
        
        // Compare the random numbers
        if randomLeftNumber > randomRightNumber {
            // Left side wins
            leftScore += 1
            playerResultLabel.text = "\(leftScore)"
        } else if randomLeftNumber < randomRightNumber {
            // Right side wins
            rightScore += 1
            cpuResultLabel.text = "\(rightScore)"
        } else {
            // Tie
        }
    }
    
}

extension ViewController {
    
    private func styles() {
        buttonAndCardStackView = makeStackView(distribution: .fill, direction: .vertical)
        
        backgroundImg = makeImageView(withImage: #imageLiteral(resourceName: "background"))
        
        logo = makeImageView(withImage: #imageLiteral(resourceName: "logo"))
        button = makeButton(withText: "", withImage: #imageLiteral(resourceName: "dealbutton"))
        
        cardStackView = makeStackView(distribution: .fill, direction: .horizontal)
        firstCard = makeImageView(withImage: #imageLiteral(resourceName: "card6"))
        secondCard = makeImageView(withImage: #imageLiteral(resourceName: "card10"))
        
        playersStackView = makeStackView(distribution: .fill, direction: .vertical)
        playerLabel = makeLabel(withText: "Player", fontSize: 17)
        playerResultLabel = makeLabel(withText: "0", fontSize: 40)
        
        cpuStackView = makeStackView(distribution: .fill, direction: .vertical)
        cpuLabel = makeLabel(withText: "CPU", fontSize: 17)
        cpuResultLabel = makeLabel(withText: "0", fontSize: 40)
    }
    
    private func layout() {
        cardStackView.addArrangedSubview(firstCard)
        cardStackView.addArrangedSubview(secondCard)
        cardStackView.spacing = 30
        
        buttonAndCardStackView.addArrangedSubview(cardStackView)
        buttonAndCardStackView.addArrangedSubview(button)
        buttonAndCardStackView.spacing = 30
        
        playersStackView.addArrangedSubview(playerLabel)
        playersStackView.addArrangedSubview(playerResultLabel)
        playersStackView.alignment = .leading
        
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
    
    override func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?) {
        super.traitCollectionDidChange(previousTraitCollection)
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

        } else if width == .compact && height == .regular {
            buttonAndCardStackView.spacing = 30
            
            NSLayoutConstraint.activate([
                buttonAndCardStackView.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 20)
            ])
            
            NSLayoutConstraint.activate([
                logo.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10),
                logo.centerXAnchor.constraint(equalTo: view.centerXAnchor)
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
