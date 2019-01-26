//
//  MenuViewController.swift
//  Indulge
//
//  Created by Michel Balamou on 2019-01-26.
//  Copyright © 2019 Michel Balamou. All rights reserved.
//

import UIKit

class MenuViewController: UIViewController {
    var menuView: MenuView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        menuView = MenuView(frame: self.view.frame)
        self.view = menuView
        
        menuView.locationButton.addTarget(self, action: #selector(locationButtonTapped), for: .touchUpInside)
    }
    
    @objc func locationButtonTapped() {
        
    }
    
}
