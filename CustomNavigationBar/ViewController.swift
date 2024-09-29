//
//  ViewController.swift
//  CustomNavigationBar
//
//  Created by Никита Козловский on 28.09.2024.
//

import UIKit

class ViewController: UIViewController {
    
    private lazy var contactButton: UIButton = {
        let button = UIButton()
        button.setTitle("Go to contact", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.backgroundColor = #colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1)
        button.layer.cornerRadius = 10
        button.addTarget(self, 
                         action: #selector(contactButtonTapped),
                         for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "CustomNavBar"
        
        view.backgroundColor = #colorLiteral(red: 0.9594197869, green: 0.9599153399, blue: 0.975127399, alpha: 1)
        addViews()
        setConstraints()
    }
    
    private func addViews() {
        view.addSubview(contactButton)
    }
    
    private func setConstraints() {
        NSLayoutConstraint.activate([
            contactButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            contactButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            contactButton.heightAnchor.constraint(equalToConstant: 50),
            contactButton.widthAnchor.constraint(equalToConstant: 150)
        ])
    }
    
    @objc private func contactButtonTapped() {
        let contactVC = ContactViewController()
        navigationController?.pushViewController(contactVC, animated: true)
    }


}

