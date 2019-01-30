//
//  SettingsViewController.swift
//  Indulge
//
//  Created by Michel Balamou on 2019-01-28.
//  Copyright © 2019 Michel Balamou. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
    var settingsView: SettingsView!
    weak var delegate: SettingsDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        settingsView = SettingsView(frame: self.view.frame)
        self.view = settingsView
        settingsView.signOutButton.addTarget(self, action: #selector(signOutButtonTapped), for: .touchUpInside)
    }
    
    @objc func signOutButtonTapped() {
        delegate?.showWelcome(self)
    }
}

