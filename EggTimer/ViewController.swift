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
        
        
    }
    private func setConstraints() {
        view.addConstraints ([
            mainStackView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            mainStackView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            mainStackView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            mainStackView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20),
            
            progressView.centerYAnchor.constraint(equalTo: timerView.centerYAnchor),
            progressView.leadingAnchor.constraint(equalTo: timerView.leadingAnchor),
            progressView.trailingAnchor.constraint(equalTo: timerView.trailingAnchor)
            
        ])
        
        
        
    }
}

//MARK: - extension ImageView
        
    private extension UIImageView {
        static func makeEggImageView(named imageName: String) -> UIImageView {
        let imageView = UIImageView(image: UIImage(named: imageName))
        imageView.contentMode = .scaleAspectFit
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }
}
        
         
        
    
#Preview {
    ViewController()
}
