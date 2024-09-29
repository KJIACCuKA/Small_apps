//
//  ProductCell.swift
//  Restaraunt Menu
//
//  Created by Никита Козловский on 29.09.2024.
//

import UIKit

class ProductCell: UITableViewCell {
    
    static let reuseID = "productCell"
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
