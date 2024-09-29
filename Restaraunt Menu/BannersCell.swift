//
//  BannersCell.swift
//  Restaraunt Menu
//
//  Created by Никита Козловский on 29.09.2024.
//

import UIKit
import SnapKit

class BannersCell: UICollectionViewCell {
    
    static let reuseID = "reuseID"
    
    private lazy var imageView: UIImageView = {
        let image = UIImageView()
        
        image.image = UIImage(named: "banner1")
        image.contentMode = .center
        image.contentMode = .scaleAspectFill
        return image
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configure(string: String) {
        imageView.image = UIImage(named: string)
    }
    
    private func setupView() {
        backgroundColor = .systemBackground
        
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = 10
        
        addSubview(imageView)
        
        imageView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
    }
}
