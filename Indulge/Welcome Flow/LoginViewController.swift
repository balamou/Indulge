//
//  LoginViewController.swift
//  Indulge
//
//  Created by Michel Balamou on 2019-01-25.
//  Copyright © 2019 Michel Balamou. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
    var loginView: LoginView!
    weak var delegate: LoginDelegate?
    var previousConstraintForButton: NSLayoutConstraint?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loginView = LoginView(frame: self.view.frame)
        self.view = loginView
        
        loginView.continueButton.addTarget(self, action: #selector(continueButtonTapped), for: .touchUpInside)
        loginView.backButton.addTarget(self, action: #selector(backButtonTapped), for: .touchUpInside)
        
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow), name: UIResponder.keyboardWillShowNotification, object: nil)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        loginView.emailTextField.becomeFirstResponder()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        loginView.emailTextField.becomeFirstResponder()
    }
    
    override func viewDidLayoutSubviews() {
        loginView.viewDidLayoutSubviews()
    }
    
    @objc func keyboardWillShow(_ notification: Notification) {
        if let keyboardFrame: NSValue = notification.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? NSValue {
            let keyboardRectangle = keyboardFrame.cgRectValue
            let keyboardHeight = keyboardRectangle.height
            
            previousConstraintForButton?.isActive = false
            previousConstraintForButton = loginView.continueButton.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -keyboardHeight)
            previousConstraintForButton?.isActive = true
        }
    }
    
    @objc func continueButtonTapped(){
        // TODO: 1. Send request to the server
        // 2. Verify credentials (login & password)
        // 3. if success show location view ↓↓↓
        delegate?.showLocation(self)
    }
    
    @objc func backButtonTapped(){
        delegate?.backButtonTapped(self)
    }
}
