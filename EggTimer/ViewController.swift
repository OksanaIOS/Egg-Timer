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
        element.backgroundColor = .systemCyan
        element.translatesAutoresizingMaskIntoConstraints = false
        return element
    }()
    
    private lazy var
    
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
            view.backgroundColor = .white
            view.addSubview(mainStackView)
            
        }
        private func setConstraints() {
            NSLayoutConstraint.activate([
                mainStackView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
                mainStackView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
                mainStackView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
                mainStackView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20)
            
            ])
            
        }
    
    


}
#Preview {
    ViewController()
}
