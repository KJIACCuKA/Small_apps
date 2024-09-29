//
//  ViewController.swift
//  Restaraunt Menu
//
//  Created by Никита Козловский on 29.09.2024.
//

import UIKit

class MenuViewController: UIViewController {
    
    private let productsAPI = ProductsAPI()
    private var products: [Products] = []
    
    private lazy var tableView: UITableView = {
        let tableView = UITableView()
        tableView.register(ProductCell.self, forCellReuseIdentifier: ProductCell.reuseID)
        tableView.dataSource = self
        tableView.delegate = self
        tableView.tableHeaderView = bannerHeaderView
        tableView.separatorStyle = .none
        return tableView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    lazy var bannerHeaderView: BannersView = {
        let widht = UIView.screenWight
        let height = widht * 0.3
        let bannerView = BannersView(frame: CGRect(x: 0, y: 0, width: widht, height: height))
    }()

}

