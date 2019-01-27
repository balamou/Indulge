//
//  CartViewController.swift
//  Indulge
//
//  Created by Michel Balamou on 2019-01-26.
//  Copyright © 2019 Michel Balamou. All rights reserved.
//

import UIKit

class CartViewController: UIViewController {
    var cartView: CartView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        cartView = CartView(frame: self.view.frame)
        self.view = cartView
    }
    
    @objc func locationButtonTapped() {
        
    }
    
}
