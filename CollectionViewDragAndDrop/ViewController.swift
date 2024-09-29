//
//  ViewController.swift
//  CollectionViewDragAndDrop
//
//  Created by Никита Козловский on 28.09.2024.
//

import UIKit

class ViewController: UIViewController {
    
    private let emojiCellID = "emojiCellID"
    
    private lazy var emojiCollectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        return collectionView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .cyan
        title = "Эмодзи!"
        settingsForCollectionView()
    }
    
    private func settingsForCollectionView() {
        view.addSubview(emojiCollectionView)
        
        emojiCollectionView.dataSource = self
        emojiCollectionView.delegate = self
        emojiCollectionView.register(EmojiCollectionViewCell.self, forCellWithReuseIdentifier: emojiCellID)
        
        NSLayoutConstraint.activate([
            emojiCollectionView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 30),
            emojiCollectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            emojiCollectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            emojiCollectionView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -20)
        ])
    }
    
    private func goToNextVC() {
        let oneEmojiVC = OneEmojiViewController()
        let oneEmojiNVC = UINavigationController(rootViewController: oneEmojiVC)
        present(oneEmojiNVC, animated: true)
    }
}

extension ViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return Emoji.emojies.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let item = collectionView.dequeueReusableCell(withReuseIdentifier: emojiCellID, for: indexPath) as? EmojiCollectionViewCell else { return UICollectionViewCell() }
        item.cellSettings(indexPath: indexPath)
        return item
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        goToNextVC()
    }
    
}

extension ViewController: UICollectionViewDelegate {
    
}

