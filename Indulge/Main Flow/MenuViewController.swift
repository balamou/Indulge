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
    weak var delegate: MenuDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        menuView = MenuView(frame: self.view.frame)
        self.view = menuView
        
        menuView.generateTags(tags: ["Pastries", "Croissants", "One"])
        
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
    
}
