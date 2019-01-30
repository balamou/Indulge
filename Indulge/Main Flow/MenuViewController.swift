//
//  MenuViewController.swift
//  Indulge
//
//  Created by Michel Balamou on 2019-01-26.
//  Copyright © 2019 Michel Balamou. All rights reserved.
//

import UIKit

class MenuViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    var menuView: MenuView!
    weak var delegate: MenuDelegate?
    let cellId = "cellId"
    var products : [Product] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        menuView = MenuView(frame: self.view.frame)
        self.view = menuView
        //
        products += [Product(productName: "Millefeuille Desert with Raspberry", price: 3.99, quantity: 1, picture: #imageLiteral(resourceName: "test1"))]
        products += [Product(productName: "Chocolate raspberry cake", price: 5.99, quantity: 3, picture: #imageLiteral(resourceName: "test2"))]
        products += [Product(productName: "Chocolate wrapped caramel", price: 2.99, quantity: 134, picture: #imageLiteral(resourceName: "test3"))]
        products += [Product(productName: "Glazed donut with caramel", price: 1.99, quantity: 0, picture: #imageLiteral(resourceName: "test1"))]
        //
        menuView.tableView.delegate = self
        menuView.tableView.dataSource = self
        menuView.tableView.register(ProductViewCell.self, forCellReuseIdentifier: cellId)
        
        menuView.generateTags(tags: ["Pastries", "Cakes", "Vegan", "Gluten free"])
        
        menuView.locationButton.addTarget(self, action: #selector(locationButtonTapped), for: .touchUpInside)
        _ = menuView.tagButtons.map{ $0.addTarget(self, action: #selector(self.tagTapped), for: .touchUpInside)}
    }
    
    @objc func tagTapped() {
    }
    
    override func viewDidAppear(_ animated: Bool) {
        menuView.viewDidLayoutSubviews() // TODO: Hack that executes layout 🤨 HACK
    }
    
    override func viewDidLayoutSubviews() {
        //menuView.viewDidLayoutSubviews() // TODO: Gets called but all constaints 0.0 🤨 HACK
    }
    
    @objc func locationButtonTapped() {
        delegate?.showLocation(self)
    }
 
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return products.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath) as! ProductViewCell
        let productData = products[indexPath.row]
        cell.productImageView.image = productData.picture
        cell.priceLabel.text = "$\(productData.price)"
        cell.productNameLabel.text = productData.productName
        
        if productData.quantity > 0 {
            cell.quantityLabel.text = "x\(productData.quantity)"
        }
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return ProductViewCell.height
    }
}
