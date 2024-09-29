//
//  ContactViewController.swift
//  CustomNavigationBar
//
//  Created by Никита Козловский on 28.09.2024.
//

import UIKit

class ContactViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = #colorLiteral(red: 0.9594197869, green: 0.9599153399, blue: 0.975127399, alpha: 1)
        setupViews()
    }
    
    private func setupViews() {
        createCustomNavBar()
        
        let audioRightButton = createCustomButton(
            imageName: "phone",
            selector: #selector(audioRightButtonTapped)
        )
        
        let videoRightButton = createCustomButton(
            imageName: "video",
            selector: #selector(videoRightButtonTapped)
        )
        
        let customTitleView = createCustomTitleView(
            contactName: "SwiftBook",
            contactDescription: "New lesson",
            contactImage: "swift"
        )
        
        navigationItem.rightBarButtonItems = [audioRightButton, videoRightButton]
        navigationItem.titleView = customTitleView
    }
    
    @objc private func audioRightButtonTapped() {
        print("Audio tap")
    }
    
    @objc private func videoRightButtonTapped() {
        print("Video tap")
    }
}
