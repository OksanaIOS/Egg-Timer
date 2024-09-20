//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //MARK: - UI
    
    private lazy var mainStackView: UIStackView = {
        let element = UIStackView()
       
        element.spacing = 0
        element.axis = .vertical
        element.distribution = .fillEqually
        element.translatesAutoresizingMaskIntoConstraints = false
        return element
    }()
    
    private lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.text = "How do you like your eggs?"
        label.font = .systemFont(ofSize: 25)
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var eggsStackView: UIStackView  = {
        let element = UIStackView()
        element.spacing = 20
        element.distribution = .fillEqually
        
        element.translatesAutoresizingMaskIntoConstraints = false
        return element
    }()
    
    private lazy var softImageView = UIImageView.makeEggImageView(named: "soft_egg")
    private lazy var mediumImageView = UIImageView.makeEggImageView(named: "medium_egg")
    private lazy var hardImageView = UIImageView.makeEggImageView(named: "hard_egg")
    

    private lazy var softButton = UIButton.makeButton(title: "Soft", target: self, action: #selector(eggsButtonTupped))
    private lazy var mediumButton = UIButton.makeButton(title: "Medium", target: self, action: #selector(eggsButtonTupped))
    private lazy var hardButton = UIButton.makeButton(title: "Hard", target: self, action: #selector(eggsButtonTupped))
    

    
    
    private lazy var timerView: UIView  = {
        let element = UIView()
        
        element.translatesAutoresizingMaskIntoConstraints = false
        return element
    }()
    
    private lazy var progressView: UIProgressView  = {
        let element = UIProgressView()
        
        element.translatesAutoresizingMaskIntoConstraints = false
        return element
    }()
    
    
    
    
    
    
    //MARK: - Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setViews()
        setConstraints()
        
        
    }
    @objc func eggsButtonTupped(_ sender: UIButton) {
        print(sender.currentTitle)
    }
}
//MARK: - Set Views and Set Constraints
    
extension ViewController {
    private func setViews() {
        view.backgroundColor = .systemCyan
        view.addSubview(mainStackView)
        mainStackView.addArrangedSubview(titleLabel)
        mainStackView.addArrangedSubview(eggsStackView)
        mainStackView.addArrangedSubview(timerView)
        mainStackView.addArrangedSubview(progressView)
        eggsStackView.addArrangedSubview(softImageView)
        eggsStackView.addArrangedSubview(mediumImageView)
        eggsStackView.addArrangedSubview(hardImageView)
        
        softImageView.addSubview(softButton)
        mediumImageView.addSubview(mediumButton)
        hardImageView.addSubview(hardButton)
        
        
    }
    private func setConstraints() {
        view.addConstraints ([
            mainStackView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            mainStackView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            mainStackView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            mainStackView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20),
            
            progressView.centerYAnchor.constraint(equalTo: timerView.centerYAnchor),
            progressView.leadingAnchor.constraint(equalTo: timerView.leadingAnchor),
            progressView.trailingAnchor.constraint(equalTo: timerView.trailingAnchor),
            
            softButton.topAnchor.constraint(equalTo: softImageView.topAnchor),
            softButton.leadingAnchor.constraint(equalTo: softImageView.leadingAnchor),
            softButton.bottomAnchor.constraint(equalTo: softImageView.bottomAnchor),
            softButton.trailingAnchor.constraint(equalTo: softImageView.trailingAnchor),
            
            
            mediumButton.topAnchor.constraint(equalTo: mediumImageView.topAnchor),
            mediumButton.leadingAnchor.constraint(equalTo: mediumImageView.leadingAnchor),
            mediumButton.bottomAnchor.constraint(equalTo: mediumImageView.bottomAnchor),
            mediumButton.trailingAnchor.constraint(equalTo: mediumImageView.trailingAnchor),
            
            hardButton.topAnchor.constraint(equalTo: hardImageView.topAnchor),
            hardButton.leadingAnchor.constraint(equalTo: hardImageView.leadingAnchor),
            hardButton.bottomAnchor.constraint(equalTo: hardImageView.bottomAnchor),
            hardButton.trailingAnchor.constraint(equalTo: hardImageView.trailingAnchor)
            
        ])
        
        
        
    }
}

//MARK: - extension ImageView
        
    private extension UIImageView {
        static func makeEggImageView(named imageName: String) -> UIImageView {
        let imageView = UIImageView(image: UIImage(named: imageName))
        imageView.contentMode = .scaleAspectFit
        imageView.isUserInteractionEnabled = true
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }
}
        
private extension UIButton {
    static func makeButton(title: String, target: Any?, action: Selector) -> UIButton {
        let button = UIButton()
        button.setTitle(title, for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 18, weight: .black)
        button.tintColor = .white
        button.addTarget(target, action:action, for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }
}
        
    
#Preview {
    ViewController()
}
