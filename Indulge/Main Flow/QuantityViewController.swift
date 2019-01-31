//
//  QuantityViewController.swift
//  Indulge
//
//  Created by Michel Balamou on 2019-01-30.
//  Copyright © 2019 Michel Balamou. All rights reserved.
//

import UIKit

class QuantityViewController: UIViewController {
    
    var quantityView: QuantityView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        quantityView = QuantityView(frame: self.view.frame)
        self.view = quantityView
    }
}
