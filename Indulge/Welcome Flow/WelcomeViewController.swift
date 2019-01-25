//
//  ViewController.swift
//  Indulge
//
//  Created by Michel Balamou on 2019-01-22.
//  Copyright © 2019 Michel Balamou. All rights reserved.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    var welcomeView: WelcomeView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationController?.isNavigationBarHidden = true
        
        welcomeView = WelcomeView(frame: self.view.frame)
        self.view = welcomeView
        
        welcomeView.createAccountButton.addTarget(self, action: #selector(createAccountTapped), for: .touchUpInside)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        self.navigationController?.isNavigationBarHidden = false
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.isNavigationBarHidden = true
    }
    
    @objc func createAccountTapped(){
        let phoneNumberViewController = PhoneNumberViewController()
        navigationController?.pushViewController(phoneNumberViewController, animated: true)
    }
}

