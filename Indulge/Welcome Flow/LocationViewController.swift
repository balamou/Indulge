//
//  LocationViewController.swift
//  Indulge
//
//  Created by Michel Balamou on 2019-01-25.
//  Copyright © 2019 Michel Balamou. All rights reserved.
//

import UIKit

class LocationViewController: UIViewController {
    var locationView: LocationView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        locationView = LocationView(frame: self.view.frame)
        self.view = locationView
        
        locationView.doneButton.addTarget(self, action: #selector(doneButtonTapped), for: .touchUpInside)
    }
    
    @objc func doneButtonTapped() {
        // TODO: 1. Check if location selected
        // 2. Open Selection View Controller
        navigationController?.pushViewController(MenuViewController(), animated: true)
    }
    
}
