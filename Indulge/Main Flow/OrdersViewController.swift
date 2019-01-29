//
//  OrdersViewController.swift
//  Indulge
//
//  Created by Michel Balamou on 2019-01-28.
//  Copyright © 2019 Michel Balamou. All rights reserved.
//

import UIKit

class OrdersViewController: UIViewController {
    var ordersView: OrdersView!
    //weak var delegate: OrdersDelegate? // TODO
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        ordersView = OrdersView(frame: self.view.frame)
        self.view = ordersView
    }
}
