//
//  CreateAccountViewController.swift
//  Indulge
//
//  Created by Michel Balamou on 2019-01-24.
//  Copyright © 2019 Michel Balamou. All rights reserved.
//

import UIKit

class CreateAccountViewController: UIViewController {
    var createAccountView: CreateAccountView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        createAccountView = CreateAccountView(frame: self.view.frame)
        self.view = createAccountView
        
        createAccountView.nextButton.addTarget(self, action: #selector(nextButtonTapped), for: .touchUpInside)
        createAccountView.backButton.addTarget(self, action: #selector(backButtonTapped), for: .touchUpInside)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        createAccountView.fullNameField.becomeFirstResponder()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        createAccountView.fullNameField.becomeFirstResponder()
    }
    
    @objc func nextButtonTapped() {
        // TODO: 1. check if data in fields is valid
        // TODO: 2. Send request to DB to create a user
        // TODO: 3. if success: open the location's tab
        navigationController?.pushViewController(PhoneNumberViewController(), animated: true)
    }
    
    @objc func backButtonTapped(){
        navigationController?.popViewController(animated: true)
    }
}
