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
        
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow(_:)), name: UIResponder.keyboardDidShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide(_:)), name: UIResponder.keyboardDidHideNotification, object: nil)
    }
    
    @objc func doneButtonTapped() {
        // TODO: 1. Check if location selected
        // TODO: 2. Open Menu View Controller
        navigationController?.pushViewController(MenuViewController(), animated: true)
    }
    
    @objc func keyboardWillShow(_ notification: NSNotification){
        
    }
    
    @objc func keyboardWillHide(_ notification: NSNotification){
        
    }
    
}
